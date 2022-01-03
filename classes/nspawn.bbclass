def econ_create_nspawn(d):
    import textwrap
    from string import Template

    deploydir = (d.getVar('DEPLOY_DIR_IMAGE', True) or '')
    image_name = (d.getVar('IMAGE_BASENAME', True) or '')
    machine_name = (d.getVar('MACHINE', True) or '')

    nspawn_script_name = image_name+'-'+machine_name+'.nspawn'

    nspawn_template =textwrap.dedent("""\ 
    # ${nspawn_name} — Container settings
    [Exec]
    # Settings files may include an [Exec] section,
    # which carries various execution parameters:
    
    [Files]
    # Settings files may include a [Files] section, which carries 
    # various parameters configuring the file system of the container:
    
    [Network]
    # Settings files may include a [Network] section, 
    # which carries various parameters configuring the network connectivity of the container:
    
    # Defaults, containers uses host networks:
    VirtualEthernet=no
    """)
    t = Template(nspawn_template)
    result = t.safe_substitute(nspawn_name=nspawn_script_name)

    try:
        with open(os.path.join(deploydir, nspawn_script_name), 'w') as f:
            f.write(result)
    except FileNotFoundError:
        print("directory does not exist")


python do_nspawn_files () {
    econ_create_nspawn(d)
}

addtask nspawn_files before do_build after do_shasums

