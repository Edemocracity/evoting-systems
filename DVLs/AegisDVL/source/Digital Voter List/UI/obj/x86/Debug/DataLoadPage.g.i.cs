﻿#pragma checksum "..\..\..\DataLoadPage.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "AF7BB08BF1B25B15435D49BCE0E3C5F1"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.261
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace UI {
    
    
    /// <summary>
    /// DataLoadPage
    /// </summary>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
    public partial class DataLoadPage : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 12 "..\..\..\DataLoadPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox filePathTextbox;
        
        #line default
        #line hidden
        
        
        #line 13 "..\..\..\DataLoadPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button fileBrowseButton;
        
        #line default
        #line hidden
        
        
        #line 14 "..\..\..\DataLoadPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label fileBrowseLabel;
        
        #line default
        #line hidden
        
        
        #line 15 "..\..\..\DataLoadPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button nextButton;
        
        #line default
        #line hidden
        
        
        #line 16 "..\..\..\DataLoadPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button backButton;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/UI;component/dataloadpage.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\DataLoadPage.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.filePathTextbox = ((System.Windows.Controls.TextBox)(target));
            return;
            case 2:
            this.fileBrowseButton = ((System.Windows.Controls.Button)(target));
            
            #line 13 "..\..\..\DataLoadPage.xaml"
            this.fileBrowseButton.Click += new System.Windows.RoutedEventHandler(this.FileBrowseButtonClick);
            
            #line default
            #line hidden
            return;
            case 3:
            this.fileBrowseLabel = ((System.Windows.Controls.Label)(target));
            return;
            case 4:
            this.nextButton = ((System.Windows.Controls.Button)(target));
            
            #line 15 "..\..\..\DataLoadPage.xaml"
            this.nextButton.Click += new System.Windows.RoutedEventHandler(this.NextButtonClick);
            
            #line default
            #line hidden
            return;
            case 5:
            this.backButton = ((System.Windows.Controls.Button)(target));
            
            #line 16 "..\..\..\DataLoadPage.xaml"
            this.backButton.Click += new System.Windows.RoutedEventHandler(this.BackButtonClick);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

