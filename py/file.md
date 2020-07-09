    if not user_properties:
        f = 'profiles/verify.properties'
        if scope != 'all':
            f = 'profiles/verify-{}.properties'.format(scope)
        if os.path.isfile(f):
            user_properties = os.environ.get('user_properties', f)
        else:
            user_properties = os.environ.get('user_properties', None)

    if user_properties:
        if not os.path.isfile(user_properties):
            print('Property file {} does not exist'.format(user_properties))
            sys.exit()
        
        # over write settings defined in conf
        # add a section to user_properties
        with open(user_properties, 'r') as reader:
            properties = reader.readlines()

        with open ('tmp.ini', 'w') as writer:
            writer.write('[global]\n')
            writer.write('[{}]\n'.format(scope))
            for line in properties:
                if not '#' in line and not line.startswith('jmeter.'):
                    writer.write(line)
