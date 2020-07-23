node {
    stage('git checkout') {
        git 'https://github.com/pradeepmurjwani/war-test.git'
    }
    
    stage ('code clean, test and build') {
       def maven_home = tool name: 'maven-3.6.3', type: 'maven'
       def maven_cmd = "${maven_home}/bin/mvn"
       sh "${maven_cmd} clean package"
    }
    
    stage ('deploy into tomcat') {
        deploy adapters: [tomcat8(credentialsId: 'f3dbc93a-ace8-4995-aede-bf168a5b0164', path: '', url: 'http://35.225.209.4:8080')], contextPath: 'pipeline_demo_using_war_test_prj', war: '**/*.war'
    }
}