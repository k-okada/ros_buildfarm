    <xunit plugin="xunit@@2.3.1">
      <types>
        <GoogleTestType>
          <pattern>@ESCAPE(pattern)</pattern>
          <skipNoTestFiles>true</skipNoTestFiles>
          <failIfNotNew>true</failIfNotNew>
          <deleteOutputFiles>true</deleteOutputFiles>
          <stopProcessingIfError>true</stopProcessingIfError>
        </GoogleTestType>
      </types>
      <thresholds>
        <org.jenkinsci.plugins.xunit.threshold.FailedThreshold>
          <unstableThreshold>0</unstableThreshold>
          <unstableNewThreshold/>
          <failureThreshold/>
          <failureNewThreshold/>
        </org.jenkinsci.plugins.xunit.threshold.FailedThreshold>
        <org.jenkinsci.plugins.xunit.threshold.SkippedThreshold>
          <unstableThreshold/>
          <unstableNewThreshold/>
          <failureThreshold/>
          <failureNewThreshold/>
        </org.jenkinsci.plugins.xunit.threshold.SkippedThreshold>
      </thresholds>
      <thresholdMode>1</thresholdMode>
      <extraConfiguration>
        <testTimeMargin>3000</testTimeMargin>
      </extraConfiguration>
    </xunit>
