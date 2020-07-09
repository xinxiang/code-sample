    config = configparser.ConfigParser()
    if conf is None:
        print ('No config file is provided.')
    else:
        if not os.path.isfile(conf):
            print('File {} does not exist.'.format(conf))
            sys.exit()
        else:
            config.read(conf)
            for key in config['global']:
                os.environ[key] = config['global'][key]
                # print ('{}:{}'.format(key, os.environ[key]))

            for key in config[sec]:
                os.environ[key] = config[sec][key]
                # print ('{}:{}'.format(key, os.environ[key]))
