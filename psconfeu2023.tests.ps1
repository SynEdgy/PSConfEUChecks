Describe 'Running PSConfEU 2023 Tests' {

    Context 'Sponsors readiness checks' {

        It 'Should have some content' {
            $true | Should -be $true
        }
        
        It 'Sponsors have some content' {
            $true | Should -be $true
        }
    }

    Context 'Catering Organisation checks' {
        It 'Should know the conference schedule' {
            Start-Sleep -Seconds 2
            $true | Should -be $true
        }
        
        It 'Should have coffee breaks ready' {
            $true | Should -be $true
        }

    }

    Context 'PowerShell Community Dinner checks' {

        It 'Should have some content' {
            Start-Sleep -Seconds 2
            $true | Should -be $true
        }
        
        It 'Sponsors have some content' {
            Start-Sleep -Seconds 1
            $true | Should -be $true
        }
    }
}