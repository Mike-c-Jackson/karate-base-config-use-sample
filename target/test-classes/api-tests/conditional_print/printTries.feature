Feature: conditional print trials

    Background:
        * def debugPrint = false

    Scenario:
    # * if (debugPrint) print 'test conditional print'
    # * if (debugPrint) karate.print('test conditional print')    
    * if (debugPrint) karate.log('test conditional print')