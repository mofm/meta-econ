def econ_get_sha256(deploydir, file):
    import hashlib

    m = hashlib.sha256()

    with open(os.path.join(deploydir, file), 'rb') as f:
        while True:
            data = f.read(1024)
            if not data:
                break
            m.update(data)
    return m.hexdigest()


def econ_write_sha256(d):

    shasumdir = (d.getVar('PWD', True) or '')
    shasumfile = "SHA256SUMS"
    shasum_path = os.path.join(shasumdir, shasumfile)

    if not os.path.exists(shasum_path):
        with open(shasum_path, "w"):
            pass

    write_lines = []
    deploydir = (d.getVar('DEPLOY_DIR_IMAGE', True) or '')
    for file in os.listdir(deploydir):
        if file.endswith(".tar.bz2"):
            shahash = econ_get_sha256(deploydir, file)
            write_lines.append("{}  {}".format(shahash, file))

    print(write_lines)

    with open(os.path.join(shasum_path), 'r+') as f:
        read_file = f.read()

        for line in write_lines:
            if line not in read_file:
                f.write(line+'\n')



python do_shasums () {
    econ_write_sha256(d)
}

addtask shasums before do_build after do_image_complete
