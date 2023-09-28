# classes4.dex

.class public final Landroid/webkit/WebViewFactory;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewFactory$MissingWebViewPackageException;,
        Landroid/webkit/WebViewFactory$StartupTimestamps;
    }
.end annotation


# static fields
.field private static final CHROMIUM_WEBVIEW_FACTORY:Ljava/lang/String; = "com.android.webview.chromium.WebViewChromiumFactoryProviderForT"

.field private static final CHROMIUM_WEBVIEW_FACTORY_METHOD:Ljava/lang/String; = "create"

.field private static final DEBUG:Z = false

.field public static final LIBLOAD_ADDRESS_SPACE_NOT_RESERVED:I = 0x2

.field public static final LIBLOAD_FAILED_JNI_CALL:I = 0x7

.field public static final LIBLOAD_FAILED_LISTING_WEBVIEW_PACKAGES:I = 0x4

.field public static final LIBLOAD_FAILED_TO_FIND_NAMESPACE:I = 0xa

.field public static final LIBLOAD_FAILED_TO_LOAD_LIBRARY:I = 0x6

.field public static final LIBLOAD_FAILED_TO_OPEN_RELRO_FILE:I = 0x5

.field public static final LIBLOAD_FAILED_WAITING_FOR_RELRO:I = 0x3

.field public static final LIBLOAD_FAILED_WAITING_FOR_WEBVIEW_REASON_UNKNOWN:I = 0x8

.field public static final LIBLOAD_SUCCESS:I = 0x0

.field public static final LIBLOAD_WRONG_PACKAGE_NAME:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "WebViewFactory"

.field private static WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

.field private static sDataDirectorySuffix:Ljava/lang/String;

.field private static sPackageInfo:Landroid/content/pm/PackageInfo;

.field private static sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

.field private static final sProviderLock:Ljava/lang/Object;

.field static final sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

.field private static sWebViewDisabled:Z

.field private static sWebViewSupported:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    new-instance v0, Landroid/webkit/WebViewFactory$StartupTimestamps;

    invoke-direct {v0}, Landroid/webkit/WebViewFactory$StartupTimestamps;-><init>()V

    sput-object v0, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    const-string/jumbo v0, "webviewupdate"

    sput-object v0, Landroid/webkit/WebViewFactory;->WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static disableWebView()V
    .registers 3

    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    sput-boolean v1, Landroid/webkit/WebViewFactory;->sWebViewDisabled:Z

    monitor-exit v0

    return-void

    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t disable WebView: WebView already initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method static getDataDirectorySuffix()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/webkit/WebViewFactory;->sDataDirectorySuffix:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static getLoadedPackageInfo()Landroid/content/pm/PackageInfo;
    .registers 2

    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method static getProvider()Landroid/webkit/WebViewFactoryProvider;
    .registers 10

    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-eqz v1, :cond_9

    monitor-exit v0

    return-object v1

    :cond_9
    sget-object v1, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/webkit/WebViewFactory$StartupTimestamps;->mWebViewLoadStart:J

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eqz v1, :cond_92

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_92

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_92

    const/16 v2, 0x403

    if-eq v1, v2, :cond_92

    const/16 v2, 0x3ea

    if-eq v1, v2, :cond_92

    invoke-static {}, Landroid/webkit/WebViewFactory;->isWebViewSupported()Z

    move-result v2

    if-eqz v2, :cond_8c

    sget-boolean v2, Landroid/webkit/WebViewFactory;->sWebViewDisabled:Z

    if-nez v2, :cond_84

    const-string v2, "WebViewFactory.getProvider()"

    const-wide/16 v3, 0x10

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_9a

    :try_start_38
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProviderClass()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "create"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/webkit/WebViewDelegate;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v7, "WebViewFactoryProvider invocation"

    invoke-static {v3, v4, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4f} :catch_72
    .catchall {:try_start_38 .. :try_end_4f} :catchall_70

    const/4 v7, 0x0

    :try_start_50
    new-array v6, v6, [Ljava/lang/Object;

    new-instance v8, Landroid/webkit/WebViewDelegate;

    invoke-direct {v8}, Landroid/webkit/WebViewDelegate;-><init>()V

    aput-object v8, v6, v9

    invoke-virtual {v5, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/webkit/WebViewFactoryProvider;

    sput-object v6, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_61
    .catchall {:try_start_50 .. :try_end_61} :catchall_6a

    nop

    :try_start_62
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_72
    .catchall {:try_start_62 .. :try_end_65} :catchall_70

    :try_start_65
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_9a

    return-object v6

    :catchall_6a
    move-exception v6

    :try_start_6b
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    nop

    throw v6
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_70} :catch_72
    .catchall {:try_start_6b .. :try_end_70} :catchall_70

    :catchall_70
    move-exception v2

    goto :goto_80

    :catch_72
    move-exception v2

    :try_start_73
    const-string v5, "WebViewFactory"

    const-string v6, "error instantiating provider"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v5, Landroid/util/AndroidRuntimeException;

    invoke-direct {v5, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_80
    .catchall {:try_start_73 .. :try_end_80} :catchall_70

    :goto_80
    :try_start_80
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    :cond_84
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "WebView.disableWebView() was called: WebView is disabled"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8c
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    :cond_92
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "For security reasons, WebView is not allowed in privileged processes"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_9a
    move-exception v1

    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_80 .. :try_end_9c} :catchall_9a

    throw v1
.end method

.method private static getProviderClass()Ljava/lang/Class;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    const-string v0, "WebViewFactory"

    const/4 v1, 0x0

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v2

    :try_start_7
    const-string v3, "WebViewFactory.getWebViewContextAndSetProvider()"

    const-wide/16 v4, 0x10

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_e
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_7 .. :try_end_e} :catch_eb

    :try_start_e
    invoke-static {}, Landroid/webkit/WebViewFactory;->getWebViewContextAndSetProvider()Landroid/content/Context;

    move-result-object v3
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_e5

    move-object v1, v3

    :try_start_13
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " version "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " (code "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "WebViewFactory.getChromiumProviderClass()"

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_5a
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_13 .. :try_end_5a} :catch_eb

    :try_start_5a
    sget-object v3, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/webkit/WebViewFactory$StartupTimestamps;->mAddAssetsStart:J

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getAllApkPaths()[Ljava/lang/String;

    move-result-object v3

    array-length v6, v3

    const/4 v7, 0x0

    :goto_6c
    if-ge v7, v6, :cond_7b

    aget-object v8, v3, v7

    invoke-virtual {v2}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/AssetManager;->addAssetPathAsSharedLibrary(Ljava/lang/String;)I

    nop

    add-int/lit8 v7, v7, 0x1

    goto :goto_6c

    :cond_7b
    sget-object v3, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/webkit/WebViewFactory$StartupTimestamps;->mGetClassLoaderStart:J

    iput-wide v6, v3, Landroid/webkit/WebViewFactory$StartupTimestamps;->mAddAssetsEnd:J

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "WebViewFactory.loadNativeLibrary()"

    invoke-static {v4, v5, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, v3, Landroid/webkit/WebViewFactory$StartupTimestamps;->mNativeLoadStart:J

    iput-wide v7, v3, Landroid/webkit/WebViewFactory$StartupTimestamps;->mGetClassLoaderEnd:J

    sget-object v7, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/webkit/WebViewLibraryLoader;->loadNativeLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;)I

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string v7, "Class.forName()"

    invoke-static {v4, v5, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, v3, Landroid/webkit/WebViewFactory$StartupTimestamps;->mProviderClassForNameStart:J

    iput-wide v7, v3, Landroid/webkit/WebViewFactory$StartupTimestamps;->mNativeLoadEnd:J
    :try_end_b3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5a .. :try_end_b3} :catch_d4
    .catchall {:try_start_5a .. :try_end_b3} :catchall_d2

    :try_start_b3
    invoke-static {v6}, Landroid/webkit/WebViewFactory;->getWebViewProviderClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7
    :try_end_b7
    .catchall {:try_start_b3 .. :try_end_b7} :catchall_c4

    :try_start_b7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v3, Landroid/webkit/WebViewFactory$StartupTimestamps;->mProviderClassForNameEnd:J

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_c0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b7 .. :try_end_c0} :catch_d4
    .catchall {:try_start_b7 .. :try_end_c0} :catchall_d2

    :try_start_c0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_c3
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_c0 .. :try_end_c3} :catch_eb

    return-object v7

    :catchall_c4
    move-exception v3

    :try_start_c5
    sget-object v7, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/webkit/WebViewFactory$StartupTimestamps;->mProviderClassForNameEnd:J

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    nop

    throw v3
    :try_end_d2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c5 .. :try_end_d2} :catch_d4
    .catchall {:try_start_c5 .. :try_end_d2} :catchall_d2

    :catchall_d2
    move-exception v3

    goto :goto_e0

    :catch_d4
    move-exception v3

    :try_start_d5
    const-string v6, "error loading provider"

    invoke-static {v0, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v6, Landroid/util/AndroidRuntimeException;

    invoke-direct {v6, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v6
    :try_end_e0
    .catchall {:try_start_d5 .. :try_end_e0} :catchall_d2

    :goto_e0
    :try_start_e0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    nop

    throw v3

    :catchall_e5
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    nop

    throw v3
    :try_end_eb
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_e0 .. :try_end_eb} :catch_eb

    :catch_eb
    move-exception v3

    const-string v4, "Chromium WebView package does not exist"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroid/util/AndroidRuntimeException;

    invoke-direct {v0, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method static getStartupTimestamps()Landroid/webkit/WebViewFactory$StartupTimestamps;
    .registers 1

    sget-object v0, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    return-object v0
.end method

.method public static getUpdateService()Landroid/webkit/IWebViewUpdateService;
    .registers 1

    invoke-static {}, Landroid/webkit/WebViewFactory;->isWebViewSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method static getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;
    .registers 1

    sget-object v0, Landroid/webkit/WebViewFactory;->WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0
.end method

.method private static getWebViewContextAndSetProvider()Landroid/content/Context;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    const-string v0, "Failed to load WebView provider: "

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_7
    const-string v3, "WebViewUpdateService.waitForAndGetProvider()"

    const-wide/16 v4, 0x10

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_b5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_e} :catch_b5

    :try_start_e
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v3

    invoke-interface {v3}, Landroid/webkit/IWebViewUpdateService;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v3
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_af

    move-object v2, v3

    :try_start_17
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    nop

    iget v3, v2, Landroid/webkit/WebViewProviderResponse;->status:I

    const/4 v6, 0x3

    if-eqz v3, :cond_42

    iget v3, v2, Landroid/webkit/WebViewProviderResponse;->status:I

    if-ne v3, v6, :cond_25

    goto :goto_42

    :cond_25
    new-instance v3, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/webkit/WebViewProviderResponse;->status:I

    invoke-static {v5}, Landroid/webkit/WebViewFactory;->getWebViewPreparationErrorReason(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_42
    :goto_42
    const-string v3, "ActivityManager.addPackageDependency()"

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_47} :catch_b5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_47} :catch_b5

    :try_start_47
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v7, v2, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v7}, Landroid/app/IActivityManager;->addPackageDependency(Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_a9

    :try_start_52
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    nop

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "PackageManager.getPackageInfo()"

    invoke-static {v4, v5, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_60} :catch_b5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_52 .. :try_end_60} :catch_b5

    :try_start_60
    iget-object v8, v2, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const v9, 0x100024c0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8
    :try_end_6b
    .catchall {:try_start_60 .. :try_end_6b} :catchall_a3

    move-object v3, v8

    :try_start_6c
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    nop

    iget-object v8, v2, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v8, v3}, Landroid/webkit/WebViewFactory;->verifyPackageInfo(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v9, "initialApplication.createApplicationContext"

    invoke-static {v4, v5, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-object v9, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, v9, Landroid/webkit/WebViewFactory$StartupTimestamps;->mCreateContextStart:J
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_84} :catch_b5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6c .. :try_end_84} :catch_b5

    :try_start_84
    invoke-virtual {v1, v8, v6}, Landroid/app/Application;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v6

    sput-object v3, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_8a
    .catchall {:try_start_84 .. :try_end_8a} :catchall_95

    nop

    :try_start_8b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, v9, Landroid/webkit/WebViewFactory$StartupTimestamps;->mCreateContextEnd:J

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v6

    :catchall_95
    move-exception v6

    sget-object v9, Landroid/webkit/WebViewFactory;->sTimestamps:Landroid/webkit/WebViewFactory$StartupTimestamps;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, v9, Landroid/webkit/WebViewFactory$StartupTimestamps;->mCreateContextEnd:J

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    nop

    throw v6

    :catchall_a3
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    nop

    throw v6

    :catchall_a9
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    nop

    throw v3

    :catchall_af
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    nop

    throw v3
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_b5} :catch_b5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8b .. :try_end_b5} :catch_b5

    :catch_b5
    move-exception v2

    new-instance v3, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.webview.WebViewLibrary"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getWebViewPreparationErrorReason(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_10

    const-string v0, "Unknown"

    return-object v0

    :sswitch_6
    const-string v0, "Crashed for unknown reason"

    return-object v0

    :sswitch_9
    const-string v0, "No WebView installed"

    return-object v0

    :sswitch_c
    const-string v0, "Time out waiting for Relro files being created"

    return-object v0

    nop

    :sswitch_data_10
    .sparse-switch
        0x3 -> :sswitch_c
        0x4 -> :sswitch_9
        0x8 -> :sswitch_6
    .end sparse-switch
.end method

.method public static getWebViewProviderClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "com.android.webview.chromium.WebViewChromiumFactoryProviderForT"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static isWebViewSupported()Z
    .registers 2

    sget-object v0, Landroid/webkit/WebViewFactory;->sWebViewSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_18

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebViewFactory;->sWebViewSupported:Ljava/lang/Boolean;

    :cond_18
    sget-object v0, Landroid/webkit/WebViewFactory;->sWebViewSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static loadWebViewNativeLibraryFromPackage(Ljava/lang/String;Ljava/lang/ClassLoader;)I
    .registers 9

    const-string v0, "WebViewFactory"

    invoke-static {}, Landroid/webkit/WebViewFactory;->isWebViewSupported()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_a

    return v2

    :cond_a
    const/4 v1, 0x0

    :try_start_b
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v3

    invoke-interface {v3}, Landroid/webkit/IWebViewUpdateService;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v3
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_64

    move-object v1, v3

    nop

    iget v3, v1, Landroid/webkit/WebViewProviderResponse;->status:I

    if-eqz v3, :cond_21

    iget v3, v1, Landroid/webkit/WebViewProviderResponse;->status:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_21

    iget v0, v1, Landroid/webkit/WebViewProviderResponse;->status:I

    return v0

    :cond_21
    iget-object v3, v1, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    return v2

    :cond_2c
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v4, 0x10000080

    :try_start_37
    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_41} :catch_4c

    nop

    invoke-static {p1, v0}, Landroid/webkit/WebViewLibraryLoader;->loadNativeLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4b

    iget v4, v1, Landroid/webkit/WebViewProviderResponse;->status:I

    return v4

    :cond_4b
    return v2

    :catch_4c
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_64
    move-exception v2

    const-string v3, "error waiting for relro creation"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    return v0
.end method

.method public static onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Landroid/webkit/WebViewLibraryLoader;->prepareNativeLibraries(Landroid/content/pm/PackageInfo;)I

    move-result v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    move v0, v1

    goto :goto_f

    :catchall_7
    move-exception v1

    const-string v2, "WebViewFactory"

    const-string v3, "error preparing webview native library"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    invoke-static {p0}, Landroid/webkit/WebViewZygote;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    return v0
.end method

.method public static prepareWebViewInZygote()V
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->reserveAddressSpaceInZygote()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_c

    :catchall_4
    move-exception v0

    const-string v1, "WebViewFactory"

    const-string v2, "error preparing native loader"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method static setDataDirectorySuffix(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-nez v1, :cond_32

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_13

    sput-object p0, Landroid/webkit/WebViewFactory;->sDataDirectorySuffix:Ljava/lang/String;

    monitor-exit v0

    return-void

    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Suffix "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contains a path separator"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_32
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t set data directory suffix: WebView already initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method private static signaturesEquals([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_7

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    :cond_7
    if-nez p1, :cond_a

    return v0

    :cond_a
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    array-length v2, p0

    move v3, v0

    :goto_11
    if-ge v3, v2, :cond_1b

    aget-object v4, p0, v3

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1b
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    array-length v3, p1

    :goto_21
    if-ge v0, v3, :cond_2b

    aget-object v4, p1, v0

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_2b
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static verifyPackageInfo(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " actual: "

    if-eqz v0, :cond_77

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_4e

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v1}, Landroid/webkit/WebViewFactory;->signaturesEquals([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    if-eqz v0, :cond_2b

    return-void

    :cond_2b
    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    const-string v1, "Failed to verify WebView provider, signature mismatch"

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to load an invalid WebView provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to verify WebView provider, version code is lower than expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to verify WebView provider, packageName mismatch, expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
