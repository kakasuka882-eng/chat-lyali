package com.chatliyali.chatapp

import android.content.Context
import android.os.Bundle
import android.view.ViewGroup
import android.webkit.WebSettings
import android.webkit.WebView
import android.webkit.WebViewClient
import androidx.appcompat.app.AppCompatActivity
import android.content.pm.ApplicationInfo
import android.util.Log
import android.view.KeyEvent
import android.webkit.WebChromeClient

class MainActivity : AppCompatActivity() {
    
    private lateinit var webView: WebView
    private val CHAT_LIYALI_URL = "https://www.chatliyily.com/"
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        
        webView = findViewById(R.id.webView)
        
        // Configure WebView
        configureWebView()
        
        // Load the website
        webView.loadUrl(CHAT_LIYALI_URL)
    }
    
    private fun configureWebView() {
        val webSettings: WebSettings = webView.settings
        
        // JavaScript
        webSettings.javaScriptEnabled = true
        webSettings.domStorageEnabled = true
        webSettings.databaseEnabled = true
        webSettings.mixedContentMode = WebSettings.MIXED_CONTENT_ALWAYS_ALLOW
        
        // Performance
        webSettings.useWideViewPort = true
        webSettings.loadWithOverviewMode = true
        webSettings.cacheMode = WebSettings.LOAD_DEFAULT
        
        // Zoom
        webSettings.builtInZoomControls = true
        webSettings.displayZoomControls = false
        webSettings.setSupportZoom(true)
        
        // User Agent
        webSettings.userAgentString = webSettings.userAgentString + " ChatLiyaliZaman/1.0"
        
        // Cookies
        webSettings.saveFormData = true
        webSettings.savePassword = false
        
        // Set WebViewClient to prevent opening links in browser
        webView.webViewClient = object : WebViewClient() {
            override fun shouldOverrideUrlLoading(view: WebView?, url: String?): Boolean {
                if (url != null && url.startsWith(CHAT_LIYALI_URL.removeSuffix("/"))) {
                    view?.loadUrl(url)
                    return true
                }
                // Allow external links to open
                return false
            }
        }
        
        // Set WebChromeClient for enhanced features
        webView.webChromeClient = object : WebChromeClient() {
            override fun onProgressChanged(view: WebView?, newProgress: Int) {
                super.onProgressChanged(view, newProgress)
                // You can implement a loading progress indicator here
            }
        }
        
        // Enable debugging for debug builds
        if (0 != applicationInfo.flags and ApplicationInfo.FLAG_DEBUGGABLE) {
            WebView.setWebContentsDebuggingEnabled(true)
        }
    }
    
    override fun onKeyDown(keyCode: Int, event: KeyEvent?): Boolean {
        if (keyCode == KeyEvent.KEYCODE_BACK && webView.canGoBack()) {
            webView.goBack()
            return true
        }
        return super.onKeyDown(keyCode, event)
    }
    
    override fun onDestroy() {
        webView.destroy()
        super.onDestroy()
    }
}
