package com.bitmascot.login


import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(AdminInterceptor)
class AdminInterceptorSpec extends Specification {

    def setup() {
    }

    def cleanup() {

    }

    void "Test admin interceptor matching"() {
        when:"A request matches the interceptor"
            withRequest(controller:"admin")

        then:"The interceptor does match"
            interceptor.doesMatch()
    }
}
