# classes.dex

.class public Landroid/app/Activity;
.super Landroid/view/ContextThemeWrapper;

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;
.implements Landroid/view/Window$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/view/Window$OnWindowDismissedCallback;
.implements Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Activity$HostCallbacks;,
        Landroid/app/Activity$TranslucentConversionListener;,
        Landroid/app/Activity$RequestFinishCallback;,
        Landroid/app/Activity$DefaultKeyMode;,
        Landroid/app/Activity$ContentCaptureNotificationType;,
        Landroid/app/Activity$ManagedCursor;,
        Landroid/app/Activity$NonConfigurationInstances;,
        Landroid/app/Activity$ManagedDialog;
    }
.end annotation


# static fields
.field private static final CONTENT_CAPTURE_PAUSE:I = 0x3

.field private static final CONTENT_CAPTURE_RESUME:I = 0x2

.field private static final CONTENT_CAPTURE_START:I = 0x1

.field private static final CONTENT_CAPTURE_STOP:I = 0x4

.field private static final DEBUG_LIFECYCLE:Z = false

.field public static final DEFAULT_KEYS_DIALER:I = 0x1

.field public static final DEFAULT_KEYS_DISABLE:I = 0x0

.field public static final DEFAULT_KEYS_SEARCH_GLOBAL:I = 0x4

.field public static final DEFAULT_KEYS_SEARCH_LOCAL:I = 0x3

.field public static final DEFAULT_KEYS_SHORTCUT:I = 0x2

.field public static final DONT_FINISH_TASK_WITH_ACTIVITY:I = 0x0

.field public static final DUMP_ARG_AUTOFILL:Ljava/lang/String; = "--autofill"

.field public static final DUMP_ARG_CONTENT_CAPTURE:Ljava/lang/String; = "--contentcapture"

.field public static final DUMP_ARG_DUMP_DUMPABLE:Ljava/lang/String; = "--dump-dumpable"

.field public static final DUMP_ARG_LIST_DUMPABLES:Ljava/lang/String; = "--list-dumpables"

.field public static final DUMP_ARG_TRANSLATION:Ljava/lang/String; = "--translation"

.field private static final DUMP_IGNORES_SPECIAL_ARGS:J = 0x8e56fa2L

.field public static final FINISH_TASK_WITH_ACTIVITY:I = 0x2

.field public static final FINISH_TASK_WITH_ROOT_ACTIVITY:I = 0x1

.field protected static final FOCUSED_STATE_SET:[I

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:fragments"

.field private static final HAS_CURENT_PERMISSIONS_REQUEST_KEY:Ljava/lang/String; = "android:hasCurrentPermissionsRequest"

.field private static final KEYBOARD_SHORTCUTS_RECEIVER_PKG_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final LOG_AM_ON_ACTIVITY_RESULT_CALLED:I = 0x756e

.field private static final LOG_AM_ON_CREATE_CALLED:I = 0x7569

.field private static final LOG_AM_ON_DESTROY_CALLED:I = 0x756c

.field private static final LOG_AM_ON_PAUSE_CALLED:I = 0x7545

.field private static final LOG_AM_ON_RESTART_CALLED:I = 0x756a

.field private static final LOG_AM_ON_RESUME_CALLED:I = 0x7546

.field private static final LOG_AM_ON_START_CALLED:I = 0x756b

.field private static final LOG_AM_ON_STOP_CALLED:I = 0x7561

.field private static final LOG_AM_ON_TOP_RESUMED_GAINED_CALLED:I = 0x7570

.field private static final LOG_AM_ON_TOP_RESUMED_LOST_CALLED:I = 0x7571

.field private static final REQUEST_PERMISSIONS_WHO_PREFIX:Ljava/lang/String; = "@android:requestPermissions:"

.field public static final RESULT_CANCELED:I = 0x0

.field public static final RESULT_FIRST_USER:I = 0x1

.field public static final RESULT_OK:I = -0x1

.field private static final SAVED_DIALOGS_TAG:Ljava/lang/String; = "android:savedDialogs"

.field private static final SAVED_DIALOG_ARGS_KEY_PREFIX:Ljava/lang/String; = "android:dialog_args_"

.field private static final SAVED_DIALOG_IDS_KEY:Ljava/lang/String; = "android:savedDialogIds"

.field private static final SAVED_DIALOG_KEY_PREFIX:Ljava/lang/String; = "android:dialog_"

.field private static final SLOW_ON_ACTIVITY_RESULT_THRESHOLD_MS:J = 0x64L

.field private static final SLOW_ON_CREATE_THRESHOLD_MS:J = 0x1f4L

.field private static final SLOW_ON_DESTROY_THRESHOLD_MS:J = 0x64L

.field private static final SLOW_ON_PAUSE_THRESHOLD_MS:J = 0x32L

.field private static final SLOW_ON_RESTART_THRESHOLD_MS:J = 0x64L

.field private static final SLOW_ON_RESUME_THRESHOLD_MS:J = 0x64L

.field private static final SLOW_ON_START_THRESHOLD_MS:J = 0x64L

.field private static final SLOW_ON_STOP_THRESHOLD_MS:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "Activity"

.field private static final WINDOW_HIERARCHY_TAG:Ljava/lang/String; = "android:viewHierarchyState"


# instance fields
.field mActionBar:Landroid/app/ActionBar;

.field private mActionModeTypeStarting:I

.field mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final mActivityLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityStub:Landroid/app/ActivityStub;

.field mActivityTransitionState:Landroid/app/ActivityTransitionState;

.field private mApplication:Landroid/app/Application;

.field private mAssistToken:Landroid/os/IBinder;

.field private mAutofillClientController:Landroid/view/autofill/AutofillClientController;

.field private mCallbacksController:Landroid/content/ComponentCallbacksController;

.field mCalled:Z

.field private mCanEnterPictureInPicture:Z

.field private mChangeCanvasToTranslucent:Z

.field mChangingConfigurations:Z

.field private mComponent:Landroid/content/ComponentName;

.field mConfigChangeFlags:I

.field private mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

.field mCurrentConfig:Landroid/content/res/Configuration;

.field mDecor:Landroid/view/View;

.field private mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

.field private mDefaultKeyMode:I

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDestroyed:Z

.field private mDoReportFullyDrawn:Z

.field private mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

.field private mEmbeddedApplication:Landroid/app/Application;

.field mEmbeddedID:Ljava/lang/String;

.field private mEnableDefaultActionBarUp:Z

.field mEnterAnimationComplete:Z

.field mEnterTransitionListener:Landroid/app/SharedElementCallback;

.field mExitTransitionListener:Landroid/app/SharedElementCallback;

.field mFinished:Z

.field final mFragments:Landroid/app/FragmentController;

.field final mHandler:Landroid/os/Handler;

.field private mHasCurrentPermissionsRequest:Z

.field private mIdent:I

.field private final mInstanceTracker:Ljava/lang/Object;

.field private mInstrumentation:Landroid/app/Instrumentation;

.field mIntent:Landroid/content/Intent;

.field private mIsInMultiWindowMode:Z

.field private mIsInPictureInPictureMode:Z

.field mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

.field mLaunchedFromBubble:Z

.field mMainThread:Landroid/app/ActivityThread;

.field private final mManagedCursors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Activity$ManagedCursor;",
            ">;"
        }
    .end annotation
.end field

.field private mManagedDialogs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/Activity$ManagedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuInflater:Landroid/view/MenuInflater;

.field mParent:Landroid/app/Activity;

.field mPendingOptions:Landroid/app/ActivityOptions;

.field mReferrer:Ljava/lang/String;

.field private mRestoredFromBundle:Z

.field mResultCode:I

.field mResultData:Landroid/content/Intent;

.field mResumed:Z

.field private mSearchEvent:Landroid/view/SearchEvent;

.field private mSearchManager:Landroid/app/SearchManager;

.field private mShareableActivityToken:Landroid/os/IBinder;

.field private mShouldDockBigOverlays:Z

.field private mSplashScreen:Landroid/window/SplashScreen;

.field mStartedActivity:Z

.field mStopped:Z

.field private mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleColor:I

.field private mTitleReady:Z

.field private mToken:Landroid/os/IBinder;

.field private mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

.field private mUiThread:Ljava/lang/Thread;

.field private mUiTranslationController:Landroid/view/translation/UiTranslationController;

.field mVisibleFromClient:Z

.field mVisibleFromServer:Z

.field mVoiceInteractor:Landroid/app/VoiceInteractor;

.field private mWindow:Landroid/view/Window;

.field mWindowAdded:Z

.field private final mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$kHLZd6jBbWtXdNq0XZIR2rP3qPI(Landroid/app/Activity;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;->navigateBack()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;
    .registers 1

    iget-object p0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmToken(Landroid/app/Activity;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartActivityAsUserFromFragment(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/Activity;->startActivityAsUserFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartIntentSenderFromFragment(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderFromFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009c

    aput v2, v0, v1

    sput-object v0, Landroid/app/Activity;->FOCUSED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    iput-boolean v1, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v2, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    iput-boolean v1, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    iput-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    iput-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    iput v1, p0, Landroid/app/Activity;->mTitleColor:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/app/Activity$HostCallbacks;

    invoke-direct {v0, p0}, Landroid/app/Activity$HostCallbacks;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Landroid/app/FragmentController;->createController(Landroid/app/FragmentHostCallback;)Landroid/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    iput v1, p0, Landroid/app/Activity;->mResultCode:I

    iput-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    iput-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    iput v1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    iput-object v2, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    nop

    invoke-static {p0}, Landroid/os/StrictMode;->trackActivity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mInstanceTracker:Ljava/lang/Object;

    new-instance v0, Landroid/app/ActivityTransitionState;

    invoke-direct {v0}, Landroid/app/ActivityTransitionState;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    new-instance v0, Landroid/app/Activity$1;

    invoke-direct {v0, p0}, Landroid/app/Activity$1;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/app/Activity;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    return-void
.end method

.method private cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->cancelPendingInputEvents()V

    :cond_f
    if-eqz p1, :cond_16

    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v1, p0, p1}, Landroid/app/ActivityTransitionState;->startExitOutTransition(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_16
    return-void
.end method

.method private checkLifecycleTime(JJLjava/lang/String;)V
    .registers 8

    cmp-long v0, p1, p3

    if-lez v0, :cond_51

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PerfMonitor: Slow Operation: Activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return-void
.end method

.method private collectActivityLifecycleCallbacks()[Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_13

    iget-object v2, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    :cond_13
    monitor-exit v1

    return-object v0

    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw v2
.end method

.method private convertFromTranslucentInternal()Z
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    return v2

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x0

    return-object v1

    :cond_c
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private deviceSupportsPictureInPictureMode()Z
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.picture_in_picture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private dispatchActivityConfigurationChanged()V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityConfigurationChanged(Landroid/app/Activity;)V

    :cond_d
    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/app/Activity;->getEmbeddedApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getEmbeddedApplication()Landroid/app/Application;

    move-result-object v1

    if-eq v0, v1, :cond_2a

    invoke-virtual {p0}, Landroid/app/Activity;->getEmbeddedApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityConfigurationChanged(Landroid/app/Activity;)V

    :cond_2a
    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3e

    const/4 v1, 0x0

    :goto_31
    array-length v2, v0

    if-ge v1, v2, :cond_3e

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityConfigurationChanged(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_3e
    return-void
.end method

.method private dispatchActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/app/Application;->dispatchActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1b
    return-void
.end method

.method private dispatchActivityDestroyed()V
    .registers 4

    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_15

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityDestroyed(Landroid/app/Activity;)V

    return-void
.end method

.method private dispatchActivityPaused()V
    .registers 4

    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_15

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPaused(Landroid/app/Activity;)V

    return-void
.end method

.method private dispatchActivityPostCreated(Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getEmbeddedApplication()Landroid/app/Application;

    move-result-object v2

    if-eq v1, v2, :cond_32

    invoke-virtual {p0}, Landroid/app/Activity;->getEmbeddedApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_32
    return-void
.end method

.method private dispatchActivityPostDestroyed()V
    .registers 4

    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_15

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostDestroyed(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPostDestroyed(Landroid/app/Activity;)V

    return-void
.end method

.method private dispatchActivityPostPaused()V
    .registers 4

    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_15

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostPaused(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPostPaused(Landroid/app/Activity;)V

    return-void
.end method

.method private dispatchActivityPostResumed()V
    .registers 4

    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostResumed(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPostResumed(Landroid/app/Activity;)V

    return-void
.end method

.method private dispatchActivityPostSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_15

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method private dispatchActivityPostStarted()V
    .registers 4

    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostStarted(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPostStarted(Landroid/app/Activity;)V

    return-void
.end method

.method private dispatchActivityPostStopped()V
    .registers 4

    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_15

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostStopped(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityPostStopped(Landroid/app/Activity;)V

    return-void
.end method

.method private dispatchActivityPreCreated(Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/app/Application;->dispatchActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1b
    return-void
.end method

.method private dispatchActivityPreDestroyed()V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPreDestroyed(Landroid/app/Activity;)V

    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_1c

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreDestroyed(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_1c
    return-void
.end method

.method private dispatchActivityPrePaused()V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPrePaused(Landroid/app/Activity;)V

    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_1c

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPrePaused(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_1c
    return-void
.end method

.method private dispatchActivityPreResumed()V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPreResumed(Landroid/app/Activity;)V

    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreResumed(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1b
    return-void
.end method

.method private dispatchActivityPreSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/app/Application;->dispatchActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_1c

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_1c
    return-void
.end method

.method private dispatchActivityPreStarted()V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPreStarted(Landroid/app/Activity;)V

    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreStarted(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1b
    return-void
.end method

.method private dispatchActivityPreStopped()V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPreStopped(Landroid/app/Activity;)V

    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_1c

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreStopped(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_1c
    return-void
.end method

.method private dispatchActivityResumed()V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityResumed(Landroid/app/Activity;)V

    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1b
    return-void
.end method

.method private dispatchActivitySaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_15

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method private dispatchActivityStarted()V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityStarted(Landroid/app/Activity;)V

    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1b
    return-void
.end method

.method private dispatchActivityStopped()V
    .registers 4

    invoke-direct {p0}, Landroid/app/Activity;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_15

    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->dispatchActivityStopped(Landroid/app/Activity;)V

    return-void
.end method

.method private dispatchRequestPermissionsResult(ILandroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    if-eqz p2, :cond_c

    const-string v1, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_c
    new-array v1, v0, [Ljava/lang/String;

    :goto_e
    nop

    if-eqz p2, :cond_18

    const-string v0, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_1a

    :cond_18
    new-array v0, v0, [I

    :goto_1a
    nop

    invoke-virtual {p0, p1, v1, v0}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method private dispatchRequestPermissionsResultToFragment(ILandroid/content/Intent;Landroid/app/Fragment;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    const-string v1, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_a
    new-array v1, v0, [Ljava/lang/String;

    :goto_c
    nop

    if-eqz p2, :cond_16

    const-string v0, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_18

    :cond_16
    new-array v0, v0, [I

    :goto_18
    nop

    invoke-virtual {p3, p1, v1, v0}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method private dumpLegacyDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    const-string v2, "--dump-dumpable"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const-string v1, "%s%s option deprecated. Use %s %s instead\n"

    invoke-virtual {p2, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void
.end method

.method private ensureSearchManager()V
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    new-instance v0, Landroid/app/SearchManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/SearchManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;
    :try_end_d
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_5 .. :try_end_d} :catch_f

    nop

    return-void

    :catch_f
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private finish(I)V
    .registers 7

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_4e

    monitor-enter p0

    :try_start_5
    iget v0, p0, Landroid/app/Activity;->mResultCode:I

    iget-object v1, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_4b

    if-eqz v1, :cond_f

    invoke-virtual {v1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    :cond_f
    invoke-static {}, Landroid/appcompat/ApplicationCompatUtilsStub;->get()Landroid/appcompat/ApplicationCompatUtilsStub;

    move-result-object v2

    invoke-interface {v2}, Landroid/appcompat/ApplicationCompatUtilsStub;->isContinuityEnabled()Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-boolean v2, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    if-eqz v2, :cond_3b

    iget-boolean v2, p0, Landroid/app/Activity;->mDestroyed:Z

    if-eqz v2, :cond_3b

    add-int/lit16 p1, p1, 0xc8

    const-string v2, "Activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Config change causes Activity called onDestroy, intercept calling finish. finishTask = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/app/ActivityClient;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v2

    if-eqz v2, :cond_4a

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/Activity;->mFinished:Z

    :cond_4a
    goto :goto_51

    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0

    :cond_4e
    invoke-virtual {v0, p0}, Landroid/app/Activity;->finishFromChild(Landroid/app/Activity;)V

    :goto_51
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillClientController;->onActivityFinish(Landroid/content/Intent;)V

    return-void
.end method

.method private getAutofillClientController()Landroid/view/autofill/AutofillClientController;
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mAutofillClientController:Landroid/view/autofill/AutofillClientController;

    if-nez v0, :cond_b

    new-instance v0, Landroid/view/autofill/AutofillClientController;

    invoke-direct {v0, p0}, Landroid/view/autofill/AutofillClientController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/app/Activity;->mAutofillClientController:Landroid/view/autofill/AutofillClientController;

    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mAutofillClientController:Landroid/view/autofill/AutofillClientController;

    return-object v0
.end method

.method private getContentCaptureManager()Landroid/view/contentcapture/ContentCaptureManager;
    .registers 2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    :cond_c
    iget-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-nez v0, :cond_1a

    const-class v0, Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/ContentCaptureManager;

    iput-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    :cond_1a
    iget-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    return-object v0
.end method

.method private getContentCaptureTypeAsString(I)Ljava/lang/String;
    .registers 4

    packed-switch p1, :pswitch_data_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOW-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_17  #0x4
    const-string v0, "STOP"

    return-object v0

    :pswitch_1a  #0x3
    const-string v0, "PAUSE"

    return-object v0

    :pswitch_1d  #0x2
    const-string v0, "RESUME"

    return-object v0

    :pswitch_20  #0x1
    const-string v0, "START"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20  #00000001
        :pswitch_1d  #00000002
        :pswitch_1a  #00000003
        :pswitch_17  #00000004
    .end packed-switch
.end method

.method private static native getDlWarning()Ljava/lang/String;
.end method

.method private getOrCreateSplashScreen()Landroid/window/SplashScreen;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/app/Activity;->mSplashScreen:Landroid/window/SplashScreen;

    if-nez v0, :cond_c

    new-instance v0, Landroid/window/SplashScreen$SplashScreenImpl;

    invoke-direct {v0, p0}, Landroid/window/SplashScreen$SplashScreenImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Activity;->mSplashScreen:Landroid/window/SplashScreen;

    :cond_c
    iget-object v0, p0, Landroid/app/Activity;->mSplashScreen:Landroid/window/SplashScreen;

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private initWindowDecorActionBar()V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v1

    if-nez v1, :cond_3d

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1a

    goto :goto_3d

    :cond_1a
    new-instance v1, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v1, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    iget-boolean v2, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultIcon(I)V

    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultLogo(I)V

    return-void

    :cond_3d
    :goto_3d
    return-void
.end method

.method private missingDialog(I)Ljava/lang/IllegalArgumentException;
    .registers 5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no dialog with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was ever shown via Activity#showDialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private navigateBack()V
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void

    :cond_a
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    new-instance v2, Landroid/app/Activity$RequestFinishCallback;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Landroid/app/Activity$RequestFinishCallback;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->onBackPressedOnTaskRoot(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V

    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillClientController;->onActivityBackPressed(Landroid/content/Intent;)V

    return-void
.end method

.method private notifyContentCaptureManagerIfNeeded(I)V
    .registers 9

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyContentCapture("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Landroid/app/Activity;->getContentCaptureTypeAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_33
    :try_start_33
    invoke-direct {p0}, Landroid/app/Activity;->getContentCaptureManager()Landroid/view/contentcapture/ContentCaptureManager;

    move-result-object v2
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_83

    if-nez v2, :cond_3d

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_3d
    packed-switch p1, :pswitch_data_88

    :try_start_40
    const-string v3, "Activity"

    goto :goto_68

    :pswitch_43  #0x4
    invoke-virtual {v2}, Landroid/view/contentcapture/ContentCaptureManager;->onActivityDestroyed()V

    goto :goto_7e

    :pswitch_47  #0x3
    invoke-virtual {v2}, Landroid/view/contentcapture/ContentCaptureManager;->onActivityPaused()V

    goto :goto_7e

    :pswitch_4b  #0x2
    invoke-virtual {v2}, Landroid/view/contentcapture/ContentCaptureManager;->onActivityResumed()V

    goto :goto_7e

    :pswitch_4f  #0x1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/contentcapture/ContentCaptureManager;->updateWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_5c
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/Activity;->mShareableActivityToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/contentcapture/ContentCaptureManager;->onActivityCreated(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;)V

    goto :goto_7e

    :goto_68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid @ContentCaptureNotificationType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_40 .. :try_end_7e} :catchall_83

    :goto_7e
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_83
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_4f  #00000001
        :pswitch_4b  #00000002
        :pswitch_47  #00000003
        :pswitch_43  #00000004
    .end packed-switch
.end method

.method private restoreHasCurrentPermissionRequest(Landroid/os/Bundle;)V
    .registers 4

    if-eqz p1, :cond_b

    const/4 v0, 0x0

    const-string v1, "android:hasCurrentPermissionsRequest"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    :cond_b
    return-void
.end method

.method private restoreManagedDialogs(Landroid/os/Bundle;)V
    .registers 12

    const-string v0, "android:savedDialogs"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-string v1, "android:savedDialogIds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    array-length v2, v1

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_6a

    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_67

    new-instance v6, Landroid/app/Activity$ManagedDialog;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity$ManagedDialog-IA;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    iget-object v7, v6, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-direct {p0, v4, v5, v7}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    iget-object v7, v6, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_67

    iget-object v7, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v6, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    iget-object v9, v6, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p0, v7, v8, v9}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    iget-object v7, v6, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7, v5}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_6a
    return-void
.end method

.method private saveManagedDialogs(Landroid/os/Bundle;)V
    .registers 10

    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v2, v2, [I

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v0, :cond_49

    iget-object v4, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity$ManagedDialog;

    invoke-static {v4}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v6, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    if-eqz v6, :cond_46

    invoke-static {v4}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_49
    const-string v3, "android:savedDialogIds"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v3, "android:savedDialogs"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static savedDialogArgsKeyFor(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:dialog_args_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static savedDialogKeyFor(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:dialog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setLocusContextToContentCapture(Landroid/content/LocusId;Landroid/os/Bundle;)V
    .registers 7

    invoke-direct {p0}, Landroid/app/Activity;->getContentCaptureManager()Landroid/view/contentcapture/ContentCaptureManager;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v1, Landroid/view/contentcapture/ContentCaptureContext$Builder;

    invoke-direct {v1, p1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;-><init>(Landroid/content/LocusId;)V

    if-eqz p2, :cond_11

    invoke-virtual {v1, p2}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/contentcapture/ContentCaptureContext$Builder;

    :cond_11
    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->build()Landroid/view/contentcapture/ContentCaptureContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/contentcapture/MainContentCaptureSession;->setContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V

    return-void
.end method

.method private startActivityAsUserFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 12

    iget-object v2, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method private startIntentSenderFromFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    iget-object v2, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    return-void
.end method

.method private storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V
    .registers 4

    if-eqz p1, :cond_c

    iget-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    const-string v1, "android:hasCurrentPermissionsRequest"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_c
    return-void
.end method

.method private transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    if-nez p1, :cond_1e

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/view/Window;->isActive()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1e

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_1e
    return-object p1
.end method

.method private writeEventLog(ILjava/lang/String;J)V
    .registers 8

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/Activity;->mIdent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    return-void
.end method

.method public final addDumpable(Landroid/util/Dumpable;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    iget-object v0, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/internal/util/dump/DumpableContainerImpl;

    invoke-direct {v0}, Lcom/android/internal/util/dump/DumpableContainerImpl;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/dump/DumpableContainerImpl;->addDumpable(Landroid/util/Dumpable;)Z

    move-result v0

    return v0
.end method

.method final attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 38

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    move-object/from16 v3, p12

    move-object/from16 v4, p15

    invoke-virtual/range {p0 .. p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    iget-object v5, v0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/FragmentController;->attachHost(Landroid/app/Fragment;)V

    new-instance v5, Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v6, p16

    move-object/from16 v7, p17

    invoke-direct {v5, v0, v6, v7}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    iput-object v5, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v8, v0, Landroid/app/Activity;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    invoke-virtual {v5, v8}, Landroid/view/Window;->setWindowControllerCallback(Landroid/view/Window$WindowControllerCallback;)V

    iget-object v5, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v5, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    iget-object v5, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v5, v0}, Landroid/view/Window;->setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V

    iget-object v5, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    iget v5, v2, Landroid/content/pm/ActivityInfo;->softInputMode:I

    if-eqz v5, :cond_41

    iget-object v5, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v8, v2, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {v5, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_41
    iget v5, v2, Landroid/content/pm/ActivityInfo;->uiOptions:I

    if-eqz v5, :cond_4c

    iget-object v5, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v8, v2, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-virtual {v5, v8}, Landroid/view/Window;->setUiOptions(I)V

    :cond_4c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iput-object v5, v0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    move-object/from16 v5, p2

    iput-object v5, v0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    move-object/from16 v8, p3

    iput-object v8, v0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v9, p4

    iput-object v9, v0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object/from16 v10, p18

    iput-object v10, v0, Landroid/app/Activity;->mAssistToken:Landroid/os/IBinder;

    move-object/from16 v11, p19

    iput-object v11, v0, Landroid/app/Activity;->mShareableActivityToken:Landroid/os/IBinder;

    move/from16 v12, p5

    iput v12, v0, Landroid/app/Activity;->mIdent:I

    iput-object v1, v0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    iput-object v1, v0, Landroid/app/Activity;->mEmbeddedApplication:Landroid/app/Application;

    move-object/from16 v13, p7

    iput-object v13, v0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    move-object/from16 v14, p14

    iput-object v14, v0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    iput-object v15, v0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    iput-object v2, v0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v15, p9

    iput-object v15, v0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v5, p10

    iput-object v5, v0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    move-object/from16 v5, p11

    iput-object v5, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v4, :cond_a0

    if-eqz v3, :cond_95

    iget-object v5, v3, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    iput-object v5, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    goto :goto_a0

    :cond_95
    new-instance v5, Landroid/app/VoiceInteractor;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v5, v4, v0, v0, v3}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    iput-object v5, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    :cond_a0
    :goto_a0
    iget-object v3, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const-string/jumbo v5, "window"

    move-object/from16 v4, p1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iget-object v4, v0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v6, v0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    iget v7, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v7, v7, 0x200

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eqz v7, :cond_c2

    move/from16 v7, v16

    goto :goto_c4

    :cond_c2
    move/from16 v7, v17

    :goto_c4
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    iget-object v3, v0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v3, :cond_d4

    iget-object v4, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    :cond_d4
    iget-object v3, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iput-object v3, v0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v3, p13

    iput-object v3, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    iget-object v4, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v5, v2, Landroid/content/pm/ActivityInfo;->colorMode:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setColorMode(I)V

    iget-object v4, v0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v5, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x2000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_f3

    move/from16 v5, v16

    goto :goto_f5

    :cond_f3
    move/from16 v5, v17

    :goto_f5
    invoke-virtual {v4, v5}, Landroid/view/Window;->setPreferMinimalPostProcessing(Z)V

    invoke-direct/range {p0 .. p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/autofill/AutofillClientController;->onActivityAttached(Landroid/app/Application;)V

    invoke-virtual/range {p6 .. p6}, Landroid/app/Application;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->attachBaseContext(Landroid/content/Context;)V

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Landroid/app/Activity;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setAutofillClient(Landroid/view/autofill/AutofillManager$AutofillClient;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V

    :cond_13
    return-void
.end method

.method public canStartActivityForResult()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public closeContextMenu()V
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    :cond_e
    return-void
.end method

.method public closeOptionsMenu()V
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/app/ActionBar;->closeOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_13
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    :cond_18
    return-void
.end method

.method public final contentCaptureClientGetComponentName()Landroid/content/ComponentName;
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public convertFromTranslucent()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/app/Activity;->convertFromTranslucentInternal()Z

    return-void
.end method

.method public convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-object p1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-nez p2, :cond_c

    const/4 v2, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    :goto_10
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    iget-boolean v0, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    if-nez v0, :cond_2c

    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    :cond_2c
    iget-boolean v0, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    return v0
.end method

.method public createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    :try_start_a
    invoke-virtual {v2, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_1d

    iget-object v0, v1, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    goto :goto_1f

    :cond_1d
    iget-object v0, v0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    :goto_1f
    move-object v7, v0

    iget-object v8, v1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v10, v0, [Landroid/content/Intent;

    const/4 v0, 0x0

    aput-object v2, v10, v0

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getUserId()I

    move-result v14

    move-object v5, v15

    move/from16 v9, p1

    move/from16 v12, p3

    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    if-eqz v0, :cond_40

    new-instance v3, Landroid/app/PendingIntent;

    invoke-direct {v3, v0}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_3e} :catch_41

    move-object/from16 v16, v3

    :cond_40
    return-object v16

    :catch_41
    move-exception v0

    return-object v16
.end method

.method public final dismissDialog(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    if-eqz v0, :cond_12

    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_12
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    :cond_17
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public final dismissKeyboardShortcutsHelper()V
    .registers 4

    nop

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.intent.action.DISMISS_KEYBOARD_SHORTCUTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;)V
    .registers 16

    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->noteStateNotSaved()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    if-nez p1, :cond_10

    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_88

    :cond_10
    const-string v2, "@android:requestPermissions:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-direct {p0, p2, p4}, Landroid/app/Activity;->dispatchRequestPermissionsResult(ILandroid/content/Intent;)V

    goto :goto_88

    :cond_2a
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2, p1}, Landroid/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-direct {p0, p2, p4, v2}, Landroid/app/Activity;->dispatchRequestPermissionsResultToFragment(ILandroid/content/Intent;Landroid/app/Fragment;)V

    :cond_35
    goto :goto_88

    :cond_36
    const-string v2, "@android:view:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6b

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_6b

    return-void

    :cond_6b
    goto :goto_4e

    :cond_6c
    goto :goto_88

    :cond_6d
    const-string v2, "@android:autoFillAuth:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4}, Landroid/view/autofill/AutofillClientController;->onDispatchActivityResult(IILandroid/content/Intent;)V

    goto :goto_88

    :cond_7d
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2, p1}, Landroid/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_88

    invoke-virtual {v2, p2, p3, p4}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_88
    :goto_88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const/16 v4, 0x756e

    invoke-direct {p0, v4, p5, v2, v3}, Landroid/app/Activity;->writeEventLog(ILjava/lang/String;J)V

    const-wide/16 v7, 0x64

    const-string/jumbo v9, "onActivityResult"

    move-object v4, p0

    move-wide v5, v2

    invoke-direct/range {v4 .. v9}, Landroid/app/Activity;->checkLifecycleTime(JJLjava/lang/String;)V

    return-void
.end method

.method public dispatchEnterAnimationComplete()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mEnterAnimationComplete:Z

    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->onEnterAnimationComplete()V

    invoke-virtual {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnEnterAnimationComplete()V

    :cond_2a
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_17

    iget-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_17

    invoke-virtual {v2, p1}, Landroid/app/ActionBar;->onMenuKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_17

    return v1

    :cond_17
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_22

    return v1

    :cond_22
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-nez v1, :cond_2a

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    :cond_2a
    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v3

    goto :goto_32

    :cond_31
    const/4 v3, 0x0

    :goto_32
    invoke-virtual {p1, p0, v3, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public dispatchKeyEventForCatcher(Landroid/view/KeyEvent;Landroid/view/View;Landroid/app/Activity;)V
    .registers 5

    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Landroid/app/ActivityStub;->dispatchKeyEventForCatcher(Landroid/view/KeyEvent;Landroid/view/View;Landroid/app/Activity;)V

    :cond_7
    return-void
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method dispatchMovedToDisplay(ILandroid/content/res/Configuration;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->updateDisplay(I)V

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    return-void
.end method

.method final dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 6

    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    if-eqz p1, :cond_1a

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1a

    invoke-static {}, Landroid/util/MiuiFreeformUtils;->getListAboutNoNeedInFreeform()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return-void

    :cond_1a
    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_21

    return-void

    :cond_21
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p1, p2}, Landroid/app/FragmentController;->dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Landroid/view/Window;->onMultiWindowModeChanged()V

    :cond_2d
    iput-boolean p1, p0, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method final dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentController;->dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroid/view/Window;->onPictureInPictureModeChanged(Z)V

    :cond_c
    iput-boolean p1, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_26

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v3, :cond_26

    move v1, v2

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    return v2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    return v0

    :cond_15
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEventForCatcher(Landroid/view/MotionEvent;Landroid/view/View;Landroid/app/Activity;)V
    .registers 5

    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Landroid/app/ActivityStub;->dispatchTouchEventForCatcher(Landroid/view/MotionEvent;Landroid/view/View;Landroid/app/Activity;)V

    :cond_7
    return-void
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dumpInner(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method dumpInner(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Local Activity "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " State:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/app/Activity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/app/Activity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mFinished="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/app/Activity;->mFinished:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mIsInMultiWindowMode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mIsInPictureInPictureMode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mChangingConfigurations="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mCurrentConfig="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/FragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v1, :cond_95

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/VoiceInteractor;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_95
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_c2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_c2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_c2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Landroid/view/ViewRootImpl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_c2
    iget-object v1, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p3}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v2, p1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Landroid/app/ResourcesManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v1, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    if-eqz v1, :cond_de

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/util/dump/DumpableContainerImpl;->dumpAllDumpables(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_de
    return-void
.end method

.method public dumpInternal(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    iget-object v0, p0, Landroid/app/Activity;->mAutofillClientController:Landroid/view/autofill/AutofillClientController;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->addDumpable(Landroid/util/Dumpable;)Z

    :cond_7
    iget-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    if-eqz v0, :cond_e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->addDumpable(Landroid/util/Dumpable;)Z

    :cond_e
    iget-object v0, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p0}, Landroid/view/contentcapture/ContentCaptureManager;->addDumpable(Landroid/app/Activity;)V

    :cond_15
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_b6

    array-length v2, p4

    if-lez v2, :cond_b6

    const/4 v2, 0x0

    aget-object v1, p4, v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v6, "--dump-dumpable"

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v5, :sswitch_data_e0

    :cond_2c
    goto :goto_5c

    :sswitch_2d
    const-string v5, "--autofill"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    move v4, v2

    goto :goto_5c

    :sswitch_37
    const-string v5, "--contentcapture"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    move v4, v8

    goto :goto_5c

    :sswitch_41
    const-string v5, "--list-dumpables"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const/4 v4, 0x3

    goto :goto_5c

    :sswitch_4b
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const/4 v4, 0x4

    goto :goto_5c

    :sswitch_53
    const-string v5, "--translation"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    move v4, v7

    :goto_5c
    packed-switch v4, :pswitch_data_f6

    const/4 v3, 0x0

    goto :goto_ab

    :pswitch_61  #0x4
    array-length v4, p4

    if-ne v4, v8, :cond_6d

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " requires the dumpable name"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ab

    :cond_6d
    iget-object v4, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    if-nez v4, :cond_78

    const-string/jumbo v2, "no dumpables"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ab

    :cond_78
    array-length v4, p4

    sub-int/2addr v4, v7

    new-array v4, v4, [Ljava/lang/String;

    array-length v5, v4

    invoke-static {p4, v7, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    aget-object v5, p4, v8

    invoke-virtual {v2, p1, p3, v5, v4}, Lcom/android/internal/util/dump/DumpableContainerImpl;->dumpOneDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_ab

    :pswitch_88  #0x3
    iget-object v2, p0, Landroid/app/Activity;->mDumpableContainer:Lcom/android/internal/util/dump/DumpableContainerImpl;

    if-nez v2, :cond_95

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "No dumpables"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_98

    :cond_95
    invoke-virtual {v2, p1, p3}, Lcom/android/internal/util/dump/DumpableContainerImpl;->listDumpables(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :goto_98
    return-void

    :pswitch_99  #0x2
    const-string v2, "UiTranslationController"

    invoke-direct {p0, p1, p3, v1, v2}, Landroid/app/Activity;->dumpLegacyDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_9f  #0x1
    const-string v2, "ContentCaptureManager"

    invoke-direct {p0, p1, p3, v1, v2}, Landroid/app/Activity;->dumpLegacyDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_a5  #0x0
    const-string v2, "AutofillManager"

    invoke-direct {p0, p1, p3, v1, v2}, Landroid/app/Activity;->dumpLegacyDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_ab
    if-eqz v3, :cond_b6

    const-wide/32 v4, 0x8e56fa2

    invoke-static {v4, v5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v2

    xor-int/2addr v2, v8

    move v0, v2

    :cond_b6
    if-eqz v0, :cond_bc

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_de

    :cond_bc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not calling dump() on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because of special argument "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activity"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_de
    return-void

    nop

    :sswitch_data_e0
    .sparse-switch
        -0x2673d6ef -> :sswitch_53
        0x5fd0f67 -> :sswitch_4b
        0x1c2b8816 -> :sswitch_41
        0x4519f64d -> :sswitch_37
        0x56b9c952 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_a5  #00000000
        :pswitch_9f  #00000001
        :pswitch_99  #00000002
        :pswitch_88  #00000003
        :pswitch_61  #00000004
    .end packed-switch
.end method

.method public enterPictureInPictureMode()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v0}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    return-void
.end method

.method public enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z
    .registers 4

    invoke-direct {p0}, Landroid/app/Activity;->deviceSupportsPictureInPictureMode()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    if-eqz p1, :cond_23

    iget-boolean v0, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    if-eqz v0, :cond_1b

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    return v0

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity must be resumed to enter picture-in-picture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected non-null picture-in-picture params"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(I)V

    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_b

    invoke-interface {v0, p0}, Landroid/app/ActivityStub;->finish(Landroid/app/Activity;)V

    :cond_b
    return-void
.end method

.method public finishActivity(I)V
    .registers 5

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_10

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/ActivityClient;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_13

    :cond_10
    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    :goto_13
    return-void
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Landroid/app/ActivityClient;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public finishAffinity()V
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_24

    iget v0, p0, Landroid/app/Activity;->mResultCode:I

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    if-nez v0, :cond_1c

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    :cond_1b
    return-void

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not be called to deliver a result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not be called from an embedded activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finishAfterTransition()V
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->startExitBackTransition(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_b
    return-void
.end method

.method public finishAndRemoveTask()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(I)V

    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method public final getActivityInfo()Landroid/content/pm/ActivityInfo;
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method getActivityOptions()Landroid/app/ActivityOptions;
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mPendingOptions:Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mPendingOptions:Landroid/app/ActivityOptions;

    return-object v0
.end method

.method public final getActivityThread()Landroid/app/ActivityThread;
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    return-object v0
.end method

.method public final getActivityToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    :goto_b
    return-object v0
.end method

.method public final getApplication()Landroid/app/Application;
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public final getAssistToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->getAssistToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/app/Activity;->mAssistToken:Landroid/os/IBinder;

    :goto_b
    return-object v0
.end method

.method public final getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    return-object v0
.end method

.method public getCallingActivity()Landroid/content/ComponentName;
    .registers 3

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .registers 3

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .registers 2

    iget v0, p0, Landroid/app/Activity;->mConfigChangeFlags:I

    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final getContentCaptureClient()Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;
    .registers 1

    return-object p0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getContentScene()Landroid/transition/Scene;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransitionManager()Landroid/transition/TransitionManager;
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getTransitionManager()Landroid/transition/TransitionManager;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public final getEmbeddedApplication()Landroid/app/Application;
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mEmbeddedApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method getLastNonConfigurationChildInstances()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public getLastNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public getLaunchedFromPackage()Ljava/lang/String;
    .registers 3

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLaunchedFromUid()I
    .registers 3

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public getLocalClassName()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_2a

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_23

    goto :goto_2a

    :cond_23
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2a
    :goto_2a
    return-object v1
.end method

.method public getMaxNumPictureInPictureActions()I
    .registers 2

    invoke-static {p0}, Landroid/app/ActivityTaskManager;->getMaxNumPictureInPictureActions(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public final getMediaController()Landroid/media/session/MediaController;
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_20

    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_19

    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    goto :goto_20

    :cond_19
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    :cond_20
    :goto_20
    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public getNextAutofillId()I
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->getNextAutofillId()I

    move-result v0

    return v0
.end method

.method public getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/Window;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OnBackInvokedDispatcher are not available on non-visual activities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getParent()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method public getParentActivityIntent()Landroid/content/Intent;
    .registers 7

    iget-object v0, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return-object v2

    :cond_c
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_11
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    if-nez v4, :cond_23

    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_2c

    :cond_23
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_2c} :catch_2e

    :goto_2c
    nop

    return-object v2

    :catch_2e
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getParentActivityIntent: bad parentActivityName \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' in manifest"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Activity"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getPreferences(I)Landroid/content/SharedPreferences;
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getReferrer()Landroid/net/Uri;
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_27

    :try_start_6
    const-string v1, "android.intent.extra.REFERRER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_11

    return-object v1

    :cond_11
    const-string v2, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3
    :try_end_1d
    .catch Landroid/os/BadParcelableException; {:try_start_6 .. :try_end_1d} :catch_1f

    return-object v3

    :cond_1e
    goto :goto_27

    :catch_1f
    move-exception v1

    const-string v2, "Activity"

    const-string v3, "Cannot read referrer from intent; intent extras contain unknown custom Parcelable objects"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_27
    iget-object v1, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    if-eqz v1, :cond_41

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "android-app"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    :cond_41
    const/4 v1, 0x0

    return-object v1
.end method

.method public getRequestedOrientation()I
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_f

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v0

    return v0

    :cond_f
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    return v0
.end method

.method public final getSearchEvent()Landroid/view/SearchEvent;
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    return-object v0
.end method

.method public final getShareableActivityToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->getShareableActivityToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/app/Activity;->mShareableActivityToken:Landroid/os/IBinder;

    :goto_b
    return-object v0
.end method

.method public final getSplashScreen()Landroid/window/SplashScreen;
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;->getOrCreateSplashScreen()Landroid/window/SplashScreen;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_26

    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    return-object v0

    :cond_12
    const-string/jumbo v0, "search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    return-object v0

    :cond_21
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "System services not available to Activities before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTaskId()I
    .registers 4

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0

    return v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleColor()I
    .registers 2

    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    return v0
.end method

.method public getVoiceInteractor()Landroid/app/VoiceInteractor;
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    return-object v0
.end method

.method public final getVolumeControlStream()I
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public getWindowingMode()I
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityTaskManager;->handleFreeformModeRequst(Landroid/os/IBinder;I)I

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_e

    move v0, v1

    goto :goto_12

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_12
    return v0
.end method

.method public hasWindowFocus()Z
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    return v2

    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method public invalidateOptionsMenu()V
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_13
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    :cond_18
    return-void
.end method

.method public isActivityTransitionRunning()Z
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->isTransitionRunning()Z

    move-result v0

    return v0
.end method

.method public isBackgroundVisibleBehind()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isChangingConfigurations()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    return v0
.end method

.method public final isChild()Z
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isDestroyed()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/Activity;->mDestroyed:Z

    return v0
.end method

.method public isFinishing()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    return v0
.end method

.method public isImmersive()Z
    .registers 3

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->isImmersive(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public isInMultiWindowMode()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    return v0
.end method

.method public isInPictureInPictureMode()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    return v0
.end method

.method public isLaunchedFromBubble()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/Activity;->mLaunchedFromBubble:Z

    return v0
.end method

.method public isLocalVoiceInteractionSupported()Z
    .registers 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->supportsLocalVoiceInteraction()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public isOverlayWithDecorCaptionEnabled()Z
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isOverlayWithDecorCaptionEnabled()Z

    move-result v0

    return v0
.end method

.method public final isResumed()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/Activity;->mResumed:Z

    return v0
.end method

.method public isTaskRoot()Z
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->isTaskRoot()Z

    move-result v0

    return v0
.end method

.method final isTopOfTask()Z
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_9

    goto :goto_16

    :cond_9
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v0

    return v0

    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method public final isVisibleForAutofill()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/Activity;->mStopped:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isVoiceInteraction()Z
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isVoiceInteractionRoot()Z
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_12

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method makeVisible()V
    .registers 4

    iget-boolean v0, p0, Landroid/app/Activity;->mWindowAdded:Z

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    :cond_18
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    :cond_12
    return-object v0
.end method

.method public final managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    :cond_12
    return-object v0
.end method

.method public moveTaskToBack(Z)Z
    .registers 4

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v0

    return v0
.end method

.method public navigateUpTo(Landroid/content/Intent;)Z
    .registers 7

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_3f

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_16

    const/4 v1, 0x0

    return v1

    :cond_16
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v2, v0

    goto :goto_23

    :cond_21
    move-object v1, p1

    move-object v2, v0

    :goto_23
    monitor-enter p0

    :try_start_24
    iget p1, p0, Landroid/app/Activity;->mResultCode:I

    iget-object v0, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_3c

    if-eqz v0, :cond_2e

    invoke-virtual {v0, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    :cond_2e
    invoke-virtual {v1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v1, p1, v0}, Landroid/app/ActivityClient;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v3

    return v3

    :catchall_3c
    move-exception p1

    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p1

    :cond_3f
    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public notifyContentChange()V
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/app/ActivityStub;->notifyContentChange()V

    :cond_7
    return-void
.end method

.method public notifyRemoveSnapshotQs()V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->notifyRemoveSnapshotQS(Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_15

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "Activity"

    const-string v2, " notifyRemoveSnapshotQs failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method

.method public notifyTakeSnapshotQs()V
    .registers 2

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/app/Activity;->notifyTakeSnapshotQs(Ljava/lang/String;)V

    return-void
.end method

.method public notifyTakeSnapshotQs(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityTaskManager;->notifyTakeSnapshotQS(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_15

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "Activity"

    const-string v2, " notifyTakeSnapshotQS failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method

.method public notifyWebView(Landroid/view/View;Z)V
    .registers 4

    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Landroid/app/ActivityStub;->notifyWebView(Landroid/view/View;Z)V

    :cond_7
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 2

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 2

    return-void
.end method

.method public onActivityReenter(ILandroid/content/Intent;)V
    .registers 3

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .registers 15

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    invoke-super {p0, p1, p2, p3}, Landroid/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    goto :goto_15

    :cond_9
    :try_start_9
    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    move-exception v0

    :goto_12
    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_15
    sget-object v0, Lcom/android/internal/R$styleable;->ActivityTaskDescription:[I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v2

    const/16 v3, 0xff

    const/4 v4, 0x1

    if-nez v2, :cond_37

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    if-eqz v2, :cond_37

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    if-ne v5, v3, :cond_37

    iget-object v5, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5, v2}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    :cond_37
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    if-eqz v2, :cond_48

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    if-ne v5, v3, :cond_48

    iget-object v5, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5, v2}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    :cond_48
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    if-eqz v5, :cond_5a

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-ne v6, v3, :cond_5a

    iget-object v3, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3, v5}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColorFloating(I)V

    :cond_5a
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    if-eqz v3, :cond_66

    iget-object v6, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v6, v3}, Landroid/app/ActivityManager$TaskDescription;->setStatusBarColor(I)V

    :cond_66
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    if-eqz v6, :cond_72

    iget-object v7, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v7, v6}, Landroid/app/ActivityManager$TaskDescription;->setNavigationBarColor(I)V

    :cond_72
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x1d

    if-ge v7, v8, :cond_7e

    move v8, v4

    goto :goto_7f

    :cond_7e
    move v8, v1

    :goto_7f
    if-nez v8, :cond_95

    iget-object v9, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v10, 0x5

    invoke-virtual {v0, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v9, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureStatusBarContrastWhenTransparent(Z)V

    iget-object v1, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v9, 0x6

    invoke-virtual {v0, v9, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager$TaskDescription;->setEnsureNavigationBarContrastWhenTransparent(Z)V

    :cond_95
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    return-void
.end method

.method public onBackPressed()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/ActionBar;->collapseActionView()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_12

    invoke-interface {v0, p0}, Landroid/app/ActivityStub;->onBackPressed(Landroid/app/Activity;)V

    :cond_12
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isStateSaved()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v1

    if-eqz v1, :cond_25

    return-void

    :cond_25
    invoke-direct {p0}, Landroid/app/Activity;->navigateBack()V

    return-void
.end method

.method public onBackgroundVisibleBehindChanged(Z)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .registers 3

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_a

    invoke-interface {v0, p0, p1}, Landroid/app/ActivityStub;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    :cond_a
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Landroid/view/Window;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_16
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1d
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityConfigurationChanged()V

    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_27

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_27
    return-void
.end method

.method public onContentChanged()V
    .registers 1

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    :cond_7
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v0, :cond_b

    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/app/FragmentController;->restoreLoaderNonConfig(Landroid/util/ArrayMap;)V

    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_19

    iput-boolean v1, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    goto :goto_1c

    :cond_19
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    :cond_1c
    :goto_1c
    if-eqz p1, :cond_38

    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/autofill/AutofillClientController;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v0, "android:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-object v3, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v3, :cond_34

    iget-object v3, v3, Landroid/app/Activity$NonConfigurationInstances;->fragments:Landroid/app/FragmentManagerNonConfig;

    goto :goto_35

    :cond_34
    const/4 v3, 0x0

    :goto_35
    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V

    :cond_38
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchCreate()V

    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_47

    invoke-virtual {v0, p0}, Landroid/app/VoiceInteractor;->attachActivity(Landroid/app/Activity;)V

    :cond_47
    if-eqz p1, :cond_4b

    move v0, v1

    goto :goto_4c

    :cond_4b
    const/4 v0, 0x0

    :goto_4c
    iput-boolean v0, p0, Landroid/app/Activity;->mRestoredFromBundle:Z

    iput-boolean v1, p0, Landroid/app/Activity;->mCalled:Z

    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-nez v0, :cond_5a

    invoke-static {}, Landroid/app/ActivityStub;->newInstance()Landroid/app/ActivityStub;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    :cond_5a
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_63

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p0, v1}, Landroid/app/ActivityStub;->onCreate(Landroid/app/Activity;Landroid/os/IBinder;)V

    :cond_63
    nop

    invoke-static {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7a

    new-instance v1, Landroid/app/Activity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/app/Activity$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v1, v2}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    :cond_7a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4

    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/app/TaskStackBuilder;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 6

    if-nez p1, :cond_12

    invoke-virtual {p0, p2}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    const-string v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDestroy()V
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->onActivityDestroyed()V

    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_2e

    iget-object v3, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity$ManagedDialog;

    iget-object v4, v3, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object v4, v3, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2e
    iput-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    :cond_30
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_33
    iget-object v2, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_3a
    if-ge v3, v2, :cond_50

    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity$ManagedCursor;

    if-eqz v4, :cond_4d

    invoke-static {v4}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_50
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_33 .. :try_end_56} :catchall_90

    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    :cond_5d
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Landroid/app/ActionBar;->onDestroy()V

    :cond_64
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityDestroyed()V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/Activity;->notifyContentCaptureManagerIfNeeded(I)V

    iget-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    if-eqz v0, :cond_72

    invoke-virtual {v0}, Landroid/view/translation/UiTranslationController;->onActivityDestroyed()V

    :cond_72
    iget-object v0, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_81

    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v2}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    iput-object v1, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    :cond_81
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_88

    invoke-virtual {v0}, Landroid/content/ComponentCallbacksController;->clearCallbacks()V

    :cond_88
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_8f

    invoke-interface {v0, p0}, Landroid/app/ActivityStub;->onDestroy(Landroid/app/Activity;)V

    :cond_8f
    return-void

    :catchall_90
    move-exception v1

    :try_start_91
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v1
.end method

.method public onDetachedFromWindow()V
    .registers 1

    return-void
.end method

.method public onEnterAnimationComplete()V
    .registers 1

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/DirectAction;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_15

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_11

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_14

    :cond_11
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_14
    return v0

    :cond_15
    iget v1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    const/4 v3, 0x2

    if-ne v1, v3, :cond_30

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-virtual {v1, v2, p1, p2, v3}, Landroid/view/Window;->performPanelShortcut(IILandroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_2f

    return v0

    :cond_2f
    return v2

    :cond_30
    const/16 v1, 0x3d

    if-ne p1, v1, :cond_35

    return v2

    :cond_35
    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_95

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_43

    goto :goto_95

    :cond_43
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_97

    iget-object v4, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_97

    iget-object v4, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    iget v6, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    packed-switch v6, :pswitch_data_aa

    :pswitch_64  #0x2
    goto :goto_97

    :pswitch_65  #0x4
    invoke-virtual {p0, v4, v2, v5, v0}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_97

    :pswitch_69  #0x3
    invoke-virtual {p0, v4, v2, v5, v2}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_97

    :pswitch_6d  #0x1
    new-instance v0, Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "android.intent.action.DIAL"

    invoke-direct {v0, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_97

    :cond_95
    :goto_95
    const/4 v1, 0x1

    const/4 v3, 0x0

    :cond_97
    :goto_97
    if-eqz v1, :cond_a8

    iget-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    iget-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_a8
    return v3

    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_6d  #00000001
        :pswitch_64  #00000002
        :pswitch_69  #00000003
        :pswitch_65  #00000004
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1, p2}, Landroid/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_21

    const/4 v1, 0x4

    if-ne p1, v1, :cond_21

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Landroid/app/Activity;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    if-nez v1, :cond_21

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 v1, 0x1

    return v1

    :cond_21
    const/4 v1, 0x0

    return v1
.end method

.method public onLocalVoiceInteractionStarted()V
    .registers 1

    return-void
.end method

.method public onLocalVoiceInteractionStopped()V
    .registers 1

    return-void
.end method

.method public onLowMemory()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchLowMemory()V

    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/content/ComponentCallbacksController;->dispatchLowMemory()V

    :cond_f
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 9

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x2

    const v2, 0xc350

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_76

    return v3

    :sswitch_e
    if-eqz v0, :cond_21

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_21
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_28

    return v4

    :cond_28
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p2}, Landroid/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :sswitch_2f
    if-eqz v0, :cond_42

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_42
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_49

    return v4

    :cond_49
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p2}, Landroid/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_52

    return v4

    :cond_52
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_75

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_75

    invoke-virtual {v1}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_75

    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_70

    invoke-virtual {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v1

    return v1

    :cond_70
    invoke-virtual {v1, p0}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result v1

    return v1

    :cond_75
    return v3

    :sswitch_data_76
    .sparse-switch
        0x0 -> :sswitch_2f
        0x6 -> :sswitch_e
    .end sparse-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 6

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_17

    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_10

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    goto :goto_17

    :cond_10
    const-string v1, "Activity"

    const-string v2, "Tried to open action bar menu with no action bar"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_17
    return v0
.end method

.method public onMovedToDisplay(ILandroid/content/res/Configuration;)V
    .registers 3

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 4

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_a

    invoke-interface {v0, p0, p1, p2}, Landroid/app/ActivityStub;->onMultiWindowModeChanged(Landroid/app/Activity;ZLandroid/content/res/Configuration;)V

    :cond_a
    return-void
.end method

.method public onNavigateUp()Z
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v1, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-nez v1, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3f

    :cond_10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    invoke-virtual {v1}, Landroid/app/TaskStackBuilder;->startActivities()V

    iget v2, p0, Landroid/app/Activity;->mResultCode:I

    if-nez v2, :cond_30

    iget-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    if-eqz v2, :cond_2c

    goto :goto_30

    :cond_2c
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_3b

    :cond_30
    :goto_30
    const-string v2, "Activity"

    const-string/jumbo v3, "onNavigateUp only finishing topmost activity to return a result"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_3b
    goto :goto_3f

    :cond_3c
    invoke-virtual {p0, v0}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    :goto_3f
    const/4 v1, 0x1

    return v1

    :cond_41
    const/4 v1, 0x0

    return v1
.end method

.method public onNavigateUpFromChild(Landroid/app/Activity;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    return v0
.end method

.method public onNewActivityOptions(Landroid/app/ActivityOptions;)V
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    iget-boolean v0, p0, Landroid/app/Activity;->mStopped:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    :cond_e
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0, p1}, Landroid/app/ActivityStub;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_7
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_7
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 5

    sparse-switch p1, :sswitch_data_1c

    goto :goto_1b

    :sswitch_4
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    goto :goto_1b

    :sswitch_e
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    goto :goto_1b

    :sswitch_12
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p2}, Landroid/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    nop

    :goto_1b
    return-void

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_12
        0x6 -> :sswitch_e
        0x8 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPaused()V

    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->onActivityPaused()V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/app/Activity;->notifyContentCaptureManagerIfNeeded(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_18

    invoke-interface {v0, p0}, Landroid/app/ActivityStub;->onPause(Landroid/app/Activity;)V

    :cond_18
    return-void
.end method

.method public onPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public onPictureInPictureRequested()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onPictureInPictureUiStateChanged(Landroid/app/PictureInPictureUiState;)V
    .registers 2

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_14

    iput-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getTitleColor()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    :cond_14
    iput-boolean v1, p0, Landroid/app/Activity;->mCalled:Z

    invoke-direct {p0, v1}, Landroid/app/Activity;->notifyContentCaptureManagerIfNeeded(I)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostResume()V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/Window;->makeActive()V

    :cond_9
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    :cond_11
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    return-void
.end method

.method public onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .registers 2

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 6

    if-nez p1, :cond_e

    invoke-virtual {p0, p3}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p3}, Landroid/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0

    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public onProvideAssistContent(Landroid/app/assist/AssistContent;)V
    .registers 2

    return-void
.end method

.method public onProvideAssistData(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_42

    invoke-interface {p2, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3}, Landroid/view/MenuItem;->getAlphabeticShortcut()C

    move-result v5

    invoke-interface {v3}, Landroid/view/MenuItem;->getAlphabeticModifiers()I

    move-result v6

    if-eqz v4, :cond_3f

    if-eqz v5, :cond_3f

    if-nez v0, :cond_37

    iget-object v7, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->labelRes:I

    new-instance v8, Landroid/view/KeyboardShortcutGroup;

    if-eqz v7, :cond_32

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_33

    :cond_32
    const/4 v9, 0x0

    :goto_33
    invoke-direct {v8, v9}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v8

    :cond_37
    new-instance v7, Landroid/view/KeyboardShortcutInfo;

    invoke-direct {v7, v4, v5, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;CI)V

    invoke-virtual {v0, v7}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_42
    if-eqz v0, :cond_47

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_47
    return-void
.end method

.method public onProvideReferrer()Landroid/net/Uri;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    return-void
.end method

.method protected onRestart()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_11

    const-string v0, "android:viewHierarchyState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    :cond_11
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_5
    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityResumed()V

    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->onResume(Landroid/app/Activity;)V

    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->onActivityResumed()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/app/Activity;->notifyContentCaptureManagerIfNeeded(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_1d

    invoke-interface {v0, p0}, Landroid/app/ActivityStub;->onResume(Landroid/app/Activity;)V

    :cond_1d
    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/TurboSchedMonitor;->isCoreAppOptimizerEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/os/TurboSchedMonitor;->setForegroundActivity(Landroid/content/Context;)V

    :cond_2e
    return-void
.end method

.method onRetainNonConfigurationChildInstances()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android:viewHierarchyState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string v1, "android:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_18
    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/autofill/AutofillClientController;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivitySaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSearchRequested()Z
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_19

    const/4 v2, 0x6

    if-eq v0, v2, :cond_19

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v2, v1}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    const/4 v1, 0x1

    return v1

    :cond_19
    return v1
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .registers 4

    iput-object p1, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    invoke-virtual {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    return v0
.end method

.method protected onStart()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->doLoaderStart()V

    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityStarted()V

    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillClientController;->onActivityStarted()V

    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_19

    invoke-interface {v0, p0}, Landroid/app/ActivityStub;->onStart(Landroid/app/Activity;)V

    :cond_19
    return-void
.end method

.method public onStateNotSaved()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected onStop()V
    .registers 5

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    :cond_8
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->onStop(Landroid/app/Activity;)V

    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityStopped()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    iget-boolean v3, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {v0, v2, v3}, Landroid/view/autofill/AutofillClientController;->onActivityStopped(Landroid/content/Intent;Z)V

    iput-boolean v1, p0, Landroid/app/Activity;->mEnterAnimationComplete:Z

    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_2a

    invoke-interface {v0, p0}, Landroid/app/ActivityStub;->onStop(Landroid/app/Activity;)V

    :cond_2a
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 5

    iget-boolean v0, p0, Landroid/app/Activity;->mTitleReady:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_12

    invoke-virtual {v0, p2}, Landroid/view/Window;->setTitleColor(I)V

    :cond_12
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_19

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    :cond_19
    return-void
.end method

.method public onTopResumedActivityChanged(Z)V
    .registers 2

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method onTranslucentConversionComplete(Z)V
    .registers 5

    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    :cond_a
    iget-boolean v0, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    if-eqz v0, :cond_18

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    :cond_18
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchTrimMemory(I)V

    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchTrimMemory(I)V

    :cond_f
    return-void
.end method

.method public onUserInteraction()V
    .registers 1

    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 1

    return-void
.end method

.method public onVisibleBehindCanceled()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/app/Activity;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-eqz v1, :cond_1c

    invoke-virtual {v1, p1}, Landroid/view/contentcapture/ContentCaptureManager;->updateWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1c
    return-void
.end method

.method public onWindowDismissed(ZZ)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x2

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    invoke-direct {p0, v1}, Landroid/app/Activity;->finish(I)V

    if-eqz p2, :cond_e

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_e
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    iget v0, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    if-nez v0, :cond_10

    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iput p2, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    iput v0, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    return-object v1

    :catchall_a
    move-exception v1

    iput v0, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    throw v1
.end method

.method public openContextMenu(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    return-void
.end method

.method public openOptionsMenu()V
    .registers 4

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/app/ActionBar;->openOptionsMenu()Z

    move-result v0

    if-nez v0, :cond_19

    :cond_13
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    :cond_19
    return-void
.end method

.method public overridePendingTransition(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(III)V

    return-void
.end method

.method public overridePendingTransition(III)V
    .registers 10

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityClient;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;III)V

    return-void
.end method

.method final performCreate(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->performCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method final performCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 19

    move-object/from16 v6, p0

    const-wide/16 v7, 0x20

    invoke-static {v7, v8}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "performCreate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_27
    invoke-direct/range {p0 .. p1}, Landroid/app/Activity;->dispatchActivityPreCreated(Landroid/os/Bundle;)V

    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v10

    invoke-static {v10}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    iput-boolean v0, v6, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    const/4 v0, 0x5

    const/4 v11, 0x0

    if-ne v10, v0, :cond_55

    invoke-static {}, Landroid/util/MiuiFreeformUtils;->getListAboutNoNeedInFreeform()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    iput-boolean v11, v6, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    :cond_55
    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_5d

    iput-boolean v11, v6, Landroid/app/Activity;->mIsInMultiWindowMode:Z

    :cond_5d
    const/4 v0, 0x2

    if-ne v10, v0, :cond_62

    move v0, v9

    goto :goto_63

    :cond_62
    move v0, v11

    :goto_63
    iput-boolean v0, v6, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v6, Landroid/app/Activity;->mShouldDockBigOverlays:Z

    invoke-direct/range {p0 .. p1}, Landroid/app/Activity;->restoreHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    if-eqz p2, :cond_7f

    invoke-virtual/range {p0 .. p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_82

    :cond_7f
    invoke-virtual/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :goto_82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v14, v0, v12

    const/16 v0, 0x7569

    const-string/jumbo v1, "performCreate"

    invoke-direct {v6, v0, v1, v14, v15}, Landroid/app/Activity;->writeEventLog(ILjava/lang/String;J)V

    const-wide/16 v3, 0x1f4

    const-string/jumbo v5, "onCreate"

    move-object/from16 v0, p0

    move-wide v1, v14

    invoke-direct/range {v0 .. v5}, Landroid/app/Activity;->checkLifecycleTime(JJLjava/lang/String;)V

    iget-object v0, v6, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/app/ActivityTransitionState;->readState(Landroid/os/Bundle;)V

    iget-object v0, v6, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    xor-int/2addr v0, v9

    iput-boolean v0, v6, Landroid/app/Activity;->mVisibleFromClient:Z

    iget-object v0, v6, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchActivityCreated()V

    iget-object v0, v6, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    invoke-direct/range {p0 .. p1}, Landroid/app/Activity;->dispatchActivityPostCreated(Landroid/os/Bundle;)V

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method final performDestroy()V
    .registers 13

    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performDestroy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_25
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPreDestroyed()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/Activity;->mDestroyed:Z

    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->destroy()V

    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->dispatchDestroy()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const/16 v6, 0x756c

    const-string/jumbo v7, "performDestroy"

    invoke-direct {p0, v6, v7, v4, v5}, Landroid/app/Activity;->writeEventLog(ILjava/lang/String;J)V

    const-wide/16 v9, 0x64

    const-string/jumbo v11, "onDestroy"

    move-object v6, p0

    move-wide v7, v4

    invoke-direct/range {v6 .. v11}, Landroid/app/Activity;->checkLifecycleTime(JJLjava/lang/String;)V

    iget-object v6, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v6}, Landroid/app/FragmentController;->doLoaderDestroy()V

    iget-object v6, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v6, :cond_5f

    invoke-virtual {v6}, Landroid/app/VoiceInteractor;->detachActivity()V

    :cond_5f
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPostDestroyed()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method final performNewIntent(Landroid/content/Intent;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method final performPause()V
    .registers 14

    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performPause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_25
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPrePaused()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->dispatchPause()V

    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const/16 v7, 0x7545

    const-string/jumbo v8, "performPause"

    invoke-direct {p0, v7, v8, v5, v6}, Landroid/app/Activity;->writeEventLog(ILjava/lang/String;J)V

    const-wide/16 v10, 0x32

    const-string/jumbo v12, "onPause"

    move-object v7, p0

    move-wide v8, v5

    invoke-direct/range {v7 .. v12}, Landroid/app/Activity;->checkLifecycleTime(JJLjava/lang/String;)V

    iput-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    iget-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v2, :cond_86

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x9

    if-ge v2, v7, :cond_61

    goto :goto_86

    :cond_61
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_86
    :goto_86
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPostPaused()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method final performRestart(ZLjava/lang/String;)V
    .registers 13

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->noteStateNotSaved()V

    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_1a

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v1}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    :cond_1a
    iget-boolean v0, p0, Landroid/app/Activity;->mStopped:Z

    if-eqz v0, :cond_ce

    iput-boolean v1, p0, Landroid/app/Activity;->mStopped:Z

    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_23
    iget-object v2, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v2, :cond_7c

    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity$ManagedCursor;

    invoke-static {v4}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmReleased(Landroid/app/Activity$ManagedCursor;)Z

    move-result v5

    if-nez v5, :cond_40

    invoke-static {v4}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmUpdated(Landroid/app/Activity$ManagedCursor;)Z

    move-result v5

    if-eqz v5, :cond_79

    :cond_40
    invoke-static {v4}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->requery()Z

    move-result v5

    if-nez v5, :cond_73

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xe

    if-ge v5, v6, :cond_55

    goto :goto_73

    :cond_55
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "trying to requery an already closed cursor  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_73
    :goto_73
    invoke-static {v4, v1}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fputmReleased(Landroid/app/Activity$ManagedCursor;Z)V

    invoke-static {v4, v1}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fputmUpdated(Landroid/app/Activity$ManagedCursor;Z)V

    :cond_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_23 .. :try_end_7d} :catchall_cb

    iput-boolean v1, p0, Landroid/app/Activity;->mCalled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, p0}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const/16 v4, 0x756a

    invoke-direct {p0, v4, p2, v2, v3}, Landroid/app/Activity;->writeEventLog(ILjava/lang/String;J)V

    const-wide/16 v7, 0x64

    const-string/jumbo v9, "onRestart"

    move-object v4, p0

    move-wide v5, v2

    invoke-direct/range {v4 .. v9}, Landroid/app/Activity;->checkLifecycleTime(JJLjava/lang/String;)V

    iget-boolean v4, p0, Landroid/app/Activity;->mCalled:Z

    if-eqz v4, :cond_a6

    if-eqz p1, :cond_ce

    invoke-virtual {p0, p2}, Landroid/app/Activity;->performStart(Ljava/lang/String;)V

    goto :goto_ce

    :cond_a6
    new-instance v4, Landroid/util/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onRestart()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_cb
    move-exception v1

    :try_start_cc
    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    throw v1

    :cond_ce
    :goto_ce
    return-void
.end method

.method final performRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    return-void
.end method

.method final performRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    if-eqz p1, :cond_8

    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    :cond_8
    return-void
.end method

.method final performResume(ZLjava/lang/String;)V
    .registers 16

    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performResume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_25
    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPreResumed()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2, p2}, Landroid/app/Activity;->performRestart(ZLjava/lang/String;)V

    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->execPendingActions()Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/autofill/AutofillClientController;->onActivityPerformResume(Z)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v5, p0}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const/16 v7, 0x7546

    invoke-direct {p0, v7, p2, v5, v6}, Landroid/app/Activity;->writeEventLog(ILjava/lang/String;J)V

    const-wide/16 v10, 0x64

    const-string/jumbo v12, "onResume"

    move-object v7, p0

    move-wide v8, v5

    invoke-direct/range {v7 .. v12}, Landroid/app/Activity;->checkLifecycleTime(JJLjava/lang/String;)V

    iget-boolean v7, p0, Landroid/app/Activity;->mCalled:Z

    const-string v8, "Activity "

    if-eqz v7, :cond_db

    iget-boolean v7, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-nez v7, :cond_9e

    iget-boolean v7, p0, Landroid/app/Activity;->mFinished:Z

    if-nez v7, :cond_9e

    const-string v7, "Activity"

    const-string v9, "An activity without a UI must call finish() before onResume() completes"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0x16

    if-gt v7, v9, :cond_7b

    goto :goto_9e

    :cond_7b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call finish() prior to onResume() completing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9e
    :goto_9e
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->dispatchResume()V

    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->execPendingActions()Z

    invoke-virtual {p0}, Landroid/app/Activity;->onPostResume()V

    iget-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    if-eqz v2, :cond_b8

    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPostResumed()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_b8
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPostResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_db
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final performSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPreSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->saveState(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Landroid/app/Activity;->storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPostSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method final performSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPreSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Landroid/app/Activity;->storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Landroid/app/Activity;->dispatchActivityPostSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method final performStart(Ljava/lang/String;)V
    .registers 14

    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPreStarted()V

    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->noteStateNotSaved()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->execPendingActions()Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, p0}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const/16 v5, 0x756b

    invoke-direct {p0, v5, p1, v3, v4}, Landroid/app/Activity;->writeEventLog(ILjava/lang/String;J)V

    const-wide/16 v8, 0x64

    const-string/jumbo v10, "onStart"

    move-object v5, p0

    move-wide v6, v3

    invoke-direct/range {v5 .. v10}, Landroid/app/Activity;->checkLifecycleTime(JJLjava/lang/String;)V

    iget-boolean v5, p0, Landroid/app/Activity;->mCalled:Z

    if-eqz v5, :cond_cc

    iget-object v5, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v5}, Landroid/app/FragmentController;->dispatchStart()V

    iget-object v5, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v5}, Landroid/app/FragmentController;->reportLoaderStart()V

    iget-object v5, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    if-eqz v5, :cond_53

    move v5, v6

    goto :goto_54

    :cond_53
    move v5, v0

    :goto_54
    if-eqz v5, :cond_bc

    invoke-static {}, Landroid/app/Activity;->getDlWarning()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_bc

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Detected problems with app native libraries\n(please consult log for detail):\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-eqz v5, :cond_9e

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v10, 0x104000a

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_bc

    :cond_9e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_bc
    :goto_bc
    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/GraphicsEnvironment;->showAngleInUseDialogBox(Landroid/content/Context;)V

    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    invoke-direct {p0}, Landroid/app/Activity;->dispatchActivityPostStarted()V

    return-void

    :cond_cc
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onStart()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final performStop(ZLjava/lang/String;)V
    .registers 19

    move-object/from16 v7, p0

    const-wide/16 v8, 0x20

    invoke-static {v8, v9}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "performStop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_27
    const/4 v0, 0x0

    iput-boolean v0, v7, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    iget-object v1, v7, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-boolean v2, v7, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {v1, v2}, Landroid/app/FragmentController;->doLoaderStop(Z)V

    iput-boolean v0, v7, Landroid/app/Activity;->mCanEnterPictureInPicture:Z

    iget-boolean v1, v7, Landroid/app/Activity;->mStopped:Z

    if-nez v1, :cond_d7

    invoke-direct/range {p0 .. p0}, Landroid/app/Activity;->dispatchActivityPreStopped()V

    iget-object v1, v7, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    :cond_41
    const/4 v10, 0x1

    if-nez p1, :cond_55

    iget-object v1, v7, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz v1, :cond_55

    iget-object v1, v7, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_55

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, v7, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v10}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    :cond_55
    iget-object v1, v7, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->dispatchStop()V

    iput-boolean v0, v7, Landroid/app/Activity;->mCalled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iget-object v1, v7, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v1, v7}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v13, v1, v11

    const/16 v1, 0x7561

    move-object/from16 v15, p2

    invoke-direct {v7, v1, v15, v13, v14}, Landroid/app/Activity;->writeEventLog(ILjava/lang/String;J)V

    const-wide/16 v4, 0x64

    const-string/jumbo v6, "onStop"

    move-object/from16 v1, p0

    move-wide v2, v13

    invoke-direct/range {v1 .. v6}, Landroid/app/Activity;->checkLifecycleTime(JJLjava/lang/String;)V

    iget-boolean v1, v7, Landroid/app/Activity;->mCalled:Z

    if-eqz v1, :cond_b2

    iget-object v1, v7, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_84
    iget-object v2, v7, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_8b
    if-ge v3, v2, :cond_a8

    iget-object v4, v7, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity$ManagedCursor;

    invoke-static {v4}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmReleased(Landroid/app/Activity$ManagedCursor;)Z

    move-result v5

    if-nez v5, :cond_a5

    invoke-static {v4}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->deactivate()V

    invoke-static {v4, v10}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fputmReleased(Landroid/app/Activity$ManagedCursor;Z)V

    :cond_a5
    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    :cond_a8
    monitor-exit v1
    :try_end_a9
    .catchall {:try_start_84 .. :try_end_a9} :catchall_af

    iput-boolean v10, v7, Landroid/app/Activity;->mStopped:Z

    invoke-direct/range {p0 .. p0}, Landroid/app/Activity;->dispatchActivityPostStopped()V

    goto :goto_d9

    :catchall_af
    move-exception v0

    :try_start_b0
    monitor-exit v1
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    throw v0

    :cond_b2
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d7
    move-object/from16 v15, p2

    :goto_d9
    iput-boolean v0, v7, Landroid/app/Activity;->mResumed:Z

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method final performTopResumedActivityChanged(ZLjava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTopResumedActivityChanged(Z)V

    if-eqz p1, :cond_13

    iget v0, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/app/EventLogTags;->writeWmOnTopResumedGainedCalled(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :cond_13
    iget v0, p0, Landroid/app/Activity;->mIdent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/app/EventLogTags;->writeWmOnTopResumedLostCalled(ILjava/lang/String;Ljava/lang/String;)V

    :goto_20
    return-void
.end method

.method final performUserLeaving()V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    invoke-virtual {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    return-void
.end method

.method public postponeEnterTransition()V
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->postponeEnterTransition()V

    return-void
.end method

.method public recreate()V
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_20

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->scheduleRelaunchActivity(Landroid/os/IBinder;)V

    return-void

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only be called on top-level activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 4

    iget-object v0, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 4

    const-wide/32 v0, 0xb84ba9c

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-nez v0, :cond_14

    new-instance v0, Landroid/content/ComponentCallbacksController;

    invoke-direct {v0}, Landroid/content/ComponentCallbacksController;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    :cond_14
    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->registerCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_1f

    :cond_1c
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :goto_1f
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 4

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V

    return-void
.end method

.method public releaseInstance()Z
    .registers 3

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public final removeDialog(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    if-eqz v0, :cond_16

    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_16
    return-void
.end method

.method public reportFullyDrawn()V
    .registers 6

    iget-boolean v0, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    if-eqz v0, :cond_47

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportFullyDrawn() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_29
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    :try_start_2c
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-boolean v4, p0, Landroid/app/Activity;->mRestoredFromBundle:Z

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityClient;->reportActivityFullyDrawn(Landroid/os/IBinder;Z)V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->notifyStartupCompleted()V
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_42

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_47

    :catchall_42
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    :cond_47
    :goto_47
    return-void
.end method

.method public requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;
    .registers 4

    invoke-static {p1}, Landroid/view/DragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/DragAndDropPermissions;->take(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v0

    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .registers 8

    if-ltz p2, :cond_68

    iget-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    if-eqz v0, :cond_16

    const-string v0, "Activity"

    const-string v1, "Can request only one set of permissions at a time"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    new-array v0, v0, [I

    invoke-virtual {p0, p2, v1, v0}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void

    :cond_16
    invoke-virtual {p0}, Landroid/app/Activity;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    array-length v0, p1

    const/4 v1, 0x0

    :goto_26
    if-ge v1, v0, :cond_56

    invoke-virtual {p0}, Landroid/app/Activity;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_3b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot request renounced permission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_56
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "@android:requestPermissions:"

    invoke-virtual {p0, v2, v0, p2, v1}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    return-void

    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "requestCode should be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requestShowKeyboardShortcuts()V
    .registers 4

    nop

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.intent.action.SHOW_KEYBOARD_SHORTCUTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public requestVisibleBehind(Z)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final requestWindowFeature(I)Z
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    return v0
.end method

.method public final requireViewById(I)Landroid/view/View;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this Activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;
    .registers 7

    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationChildInstances()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->retainNestedNonConfig()Landroid/app/FragmentManagerNonConfig;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->doLoaderStart()V

    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/FragmentController;->doLoaderStop(Z)V

    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->retainLoaderNonConfig()Landroid/util/ArrayMap;

    move-result-object v3

    if-nez v0, :cond_2d

    if-nez v1, :cond_2d

    if-nez v2, :cond_2d

    if-nez v3, :cond_2d

    iget-object v4, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-nez v4, :cond_2d

    const/4 v4, 0x0

    return-object v4

    :cond_2d
    new-instance v4, Landroid/app/Activity$NonConfigurationInstances;

    invoke-direct {v4}, Landroid/app/Activity$NonConfigurationInstances;-><init>()V

    iput-object v0, v4, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    iput-object v1, v4, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    iput-object v2, v4, Landroid/app/Activity$NonConfigurationInstances;->fragments:Landroid/app/FragmentManagerNonConfig;

    iput-object v3, v4, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v5, :cond_45

    invoke-virtual {v5}, Landroid/app/VoiceInteractor;->retainInstance()V

    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    iput-object v5, v4, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    :cond_45
    return-object v4
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .registers 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11

    :cond_e
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_11
    return-void
.end method

.method public setActionBar(Landroid/widget/Toolbar;)V
    .registers 6

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    instance-of v1, v0, Lcom/android/internal/app/WindowDecorActionBar;

    if-nez v1, :cond_32

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/app/ActionBar;->onDestroy()V

    :cond_10
    if-eqz p1, :cond_27

    new-instance v1, Lcom/android/internal/app/ToolbarActionBar;

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p1, v2, p0}, Lcom/android/internal/app/ToolbarActionBar;-><init>(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Lcom/android/internal/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_2e

    :cond_27
    iput-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    :goto_2e
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    :cond_32
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set android:windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setContentTransitionManager(Landroid/transition/TransitionManager;)V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTransitionManager(Landroid/transition/TransitionManager;)V

    return-void
.end method

.method public setContentView(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    return-void
.end method

.method public final setDefaultKeyMode(I)V
    .registers 4

    iput p1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    packed-switch p1, :pswitch_data_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_b  #0x1, 0x3, 0x4
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_1b

    :pswitch_17  #0x0, 0x2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    nop

    :goto_1b
    return-void

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_17  #00000000
        :pswitch_b  #00000001
        :pswitch_17  #00000002
        :pswitch_b  #00000003
        :pswitch_b  #00000004
    .end packed-switch
.end method

.method public setDisablePreviewScreenshots(Z)V
    .registers 3

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRecentsScreenshotEnabled(Z)V

    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .registers 2

    if-nez p1, :cond_4

    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    :cond_4
    iput-object p1, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    return-void
.end method

.method public setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .registers 2

    if-nez p1, :cond_4

    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    :cond_4
    iput-object p1, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setFeatureDrawableAlpha(II)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    return-void
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    return-void
.end method

.method public setFinishOnTouchOutside(Z)V
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    return-void
.end method

.method public setImmersive(Z)V
    .registers 4

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setImmersive(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public setInheritShowWhenLocked(Z)V
    .registers 4

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setInheritShowWhenLocked(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V
    .registers 6

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1, v2}, Landroid/app/IActivityManager;->setActivityLocusContext(Landroid/content/ComponentName;Landroid/content/LocusId;Landroid/os/IBinder;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_10
    if-eqz p1, :cond_15

    invoke-direct {p0, p1, p2}, Landroid/app/Activity;->setLocusContextToContentCapture(Landroid/content/LocusId;Landroid/os/Bundle;)V

    :cond_15
    return-void
.end method

.method public final setMediaController(Landroid/media/session/MediaController;)V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setMediaController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method public setOrientationOptions(I)V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityTaskManager;->setOrientationOptions(Landroid/os/IBinder;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_e
    return-void
.end method

.method public setOverlayWithDecorCaptionEnabled(Z)V
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setOverlayWithDecorCaptionEnabled(Z)V

    return-void
.end method

.method final setParent(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    return-void
.end method

.method public setPersistent(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    .registers 4

    invoke-direct {p0}, Landroid/app/Activity;->deviceSupportsPictureInPictureMode()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_13

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected non-null picture-in-picture params"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setProgress(I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    add-int/lit8 v1, p1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    return-void
.end method

.method public final setProgressBarIndeterminate(Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p1, :cond_8

    const/4 v1, -0x3

    goto :goto_9

    :cond_8
    const/4 v1, -0x4

    :goto_9
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    return-void
.end method

.method public final setProgressBarIndeterminateVisibility(Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p1, :cond_8

    const/4 v1, -0x1

    goto :goto_9

    :cond_8
    const/4 v1, -0x2

    :goto_9
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    return-void
.end method

.method public final setProgressBarVisibility(Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p1, :cond_8

    const/4 v1, -0x1

    goto :goto_9

    :cond_8
    const/4 v1, -0x2

    :goto_9
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    return-void
.end method

.method public setRecentsScreenshotEnabled(Z)V
    .registers 4

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setRecentsScreenshotEnabled(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .registers 4

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_e

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setRequestedOrientation(Landroid/os/IBinder;I)V

    goto :goto_11

    :cond_e
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_11
    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_18

    invoke-interface {v0, p0, p1}, Landroid/app/ActivityStub;->setRequestedOrientation(Landroid/app/Activity;I)V

    :cond_18
    return-void
.end method

.method public final setResult(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public final setResult(ILandroid/content/Intent;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    iput-object p2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final setSecondaryProgress(I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    add-int/lit16 v1, p1, 0x4e20

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    return-void
.end method

.method public setShouldDockBigOverlays(Z)V
    .registers 4

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setShouldDockBigOverlays(Landroid/os/IBinder;Z)V

    iput-boolean p1, p0, Landroid/app/Activity;->mShouldDockBigOverlays:Z

    return-void
.end method

.method public setShowWhenLocked(Z)V
    .registers 4

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setShowWhenLocked(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 6

    iget-object v0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eq v0, p1, :cond_29

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->copyFromPreserveHiddenFields(Landroid/app/ActivityManager$TaskDescription;)V

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_29

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-static {p0}, Landroid/app/ActivityManager;->getLauncherLargeIconSizeInner(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    :cond_29
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method public setTheme(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTheme(I)V

    return-void
.end method

.method public setTitle(I)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    :cond_e
    return-void
.end method

.method public setTitleColor(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroid/app/Activity;->mTitleColor:I

    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public setTranslucent(Z)Z
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0

    :cond_8
    invoke-direct {p0}, Landroid/app/Activity;->convertFromTranslucentInternal()Z

    move-result v0

    return v0
.end method

.method public setTurnScreenOn(Z)V
    .registers 4

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->setTurnScreenOn(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public setVisible(Z)V
    .registers 4

    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eq v0, p1, :cond_16

    iput-boolean p1, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v0, :cond_16

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->makeVisible()V

    goto :goto_16

    :cond_10
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    :goto_16
    return-void
.end method

.method setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 7

    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/app/VoiceInteractor;->getActiveRequests()[Landroid/app/VoiceInteractor$Request;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v1}, Landroid/app/VoiceInteractor;->getActiveRequests()[Landroid/app/VoiceInteractor$Request;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_1f

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/app/VoiceInteractor$Request;->cancel()V

    invoke-virtual {v4}, Landroid/app/VoiceInteractor$Request;->clear()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1f
    if-nez p1, :cond_25

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    goto :goto_30

    :cond_25
    new-instance v0, Landroid/app/VoiceInteractor;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, p0, p0, v1}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    :goto_30
    return-void
.end method

.method public final setVolumeControlStream(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    return-void
.end method

.method public setVrModeEnabled(ZLandroid/content/ComponentName;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/ActivityClient;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWebView(Landroid/view/View;Z)V
    .registers 4

    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Landroid/app/ActivityStub;->setWebView(Landroid/view/View;Z)V

    :cond_7
    return-void
.end method

.method public shouldDockBigOverlays()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/Activity;->mShouldDockBigOverlays:Z

    return v0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_10

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    move-object v2, v3

    :cond_10
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-nez v4, :cond_19

    return v0

    :cond_19
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/app/ActivityClient;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_25} :catch_26

    return v0

    :catch_26
    move-exception v1

    return v0
.end method

.method public showAssist(Landroid/os/Bundle;)Z
    .registers 4

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final showDialog(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    return-void
.end method

.method public final showDialog(ILandroid/os/Bundle;)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    if-nez v0, :cond_31

    new-instance v1, Landroid/app/Activity$ManagedDialog;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity$ManagedDialog-IA;)V

    move-object v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v2, p2}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    if-nez v1, :cond_2c

    const/4 v1, 0x0

    return v1

    :cond_2c
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_31
    iput-object p2, v0, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, p1, v1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    const/4 v1, 0x1

    return v1
.end method

.method public showLockTaskEscapeMessage()V
    .registers 3

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActivities([Landroid/content/Intent;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 10

    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Landroid/app/Activity;->getAutofillClientController()Landroid/view/autofill/AutofillClientController;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, v1}, Landroid/view/autofill/AutofillClientController;->onStartActivity(Landroid/content/Intent;Landroid/content/Intent;)V

    const/4 v0, -0x1

    if-eqz p2, :cond_10

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_13

    :cond_10
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_13
    return-void
.end method

.method public startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    .registers 11

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZII)V

    return-void
.end method

.method public startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZII)V
    .registers 19

    move-object v10, p0

    iget-object v0, v10, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_48

    move-object v0, p2

    invoke-direct {p0, p2}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    iget-object v0, v10, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_16

    move-object v12, p1

    invoke-interface {v0, p0, p1}, Landroid/app/ActivityStub;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_16
    move-object v12, p1

    :cond_17
    iget-object v0, v10, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, v10, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, v10, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move/from16 v6, p5

    move-object v7, v11

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v0 .. v9}, Landroid/app/Instrumentation;->execStartActivityAsCaller(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;ZI)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v1, v10, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v2, v10, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, v10, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v5

    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v6

    move/from16 v4, p5

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    :cond_44
    invoke-direct {p0, v11}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    return-void

    :cond_48
    move-object v12, p1

    move-object v0, p2

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t be called from a child"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 14

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_40

    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_f

    invoke-interface {v0, p0, p1}, Landroid/app/ActivityStub;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    invoke-direct {p0, p2}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    iget-object v1, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v7, -0x1

    move-object v2, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, p3

    invoke-virtual/range {v1 .. v9}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v5

    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    :cond_3c
    invoke-direct {p0, p2}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    return-void

    :cond_40
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t be called from a child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 13

    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_b

    invoke-interface {v0, p0, p1}, Landroid/app/ActivityStub;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_43

    invoke-direct {p0, p3}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    iget-object v1, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v2, p0

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v5

    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v6

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    :cond_3a
    if-ltz p2, :cond_3f

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mStartedActivity:Z

    :cond_3f
    invoke-direct {p0, p3}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    goto :goto_4c

    :cond_43
    if-eqz p3, :cond_49

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_4c

    :cond_49
    invoke-virtual {v0, p0, p1, p2}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    :goto_4c
    return-void
.end method

.method public startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 15

    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_b

    invoke-interface {v0, p0, p2}, Landroid/app/ActivityStub;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v1, "android.intent.extra.REFERRER"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_16
    invoke-direct {p0, p4}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p4

    iget-object v2, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move-object v9, p4

    invoke-virtual/range {v2 .. v9}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v1

    if-eqz v1, :cond_40

    iget-object v2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v6

    invoke-virtual {v1}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v7

    move-object v4, p1

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    :cond_40
    invoke-direct {p0, p4}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startActivityForResultAsUser(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 16
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_44

    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_f

    invoke-interface {v0, p0, p1}, Landroid/app/ActivityStub;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    invoke-direct {p0, p4}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p4

    iget-object v1, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v2, p0

    move-object v5, p2

    move-object v6, p1

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v1 .. v9}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v5

    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v6

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    :cond_3b
    if-ltz p3, :cond_40

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mStartedActivity:Z

    :cond_40
    invoke-direct {p0, p4}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    return-void

    :cond_44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t be called from a child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Activity;->mActivityStub:Landroid/app/ActivityStub;

    if-eqz v0, :cond_b

    invoke-interface {v0, p0, p2}, Landroid/app/ActivityStub;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-direct {p0, p4}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p4

    iget-object v1, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v5

    invoke-virtual {v0}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v6

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    :cond_36
    invoke-direct {p0, p4}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    iget-object v0, v1, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_54

    const/4 v15, 0x1

    :try_start_9
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v2, "android.intent.extra.REFERRER"

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_14
    invoke-virtual {v14, v1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    invoke-virtual {v14, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v9, v1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v6, p1

    move/from16 v10, p2

    move-object/from16 v13, p3

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityTaskManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v2
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_44} :catch_46

    move v15, v2

    goto :goto_47

    :catch_46
    move-exception v0

    :goto_47
    invoke-static {v15, v14}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    const/4 v0, 0x1

    if-ltz p2, :cond_4f

    iput-boolean v0, v1, Landroid/app/Activity;->mStartedActivity:Z

    :cond_4f
    if-eq v15, v0, :cond_52

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :goto_53
    return v0

    :cond_54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "startActivityIfNeeded can only be called from a top-level activity"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    if-eqz p6, :cond_f

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    goto :goto_19

    :cond_f
    const/4 v5, -0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-virtual/range {v3 .. v9}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    :goto_19
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    move-object v9, p0

    iget-object v0, v9, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_13

    iget-object v2, v9, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    goto :goto_2e

    :cond_13
    if-eqz p7, :cond_23

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    goto :goto_2e

    :cond_23
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    :goto_2e
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v14, p4

    move-object/from16 v2, p7

    :try_start_6
    invoke-direct {v1, v2}, Landroid/app/Activity;->transferSpringboardActivityOptions(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_62

    move-object v15, v0

    const/4 v0, 0x0

    if-eqz v14, :cond_1d

    :try_start_e
    invoke-virtual {v14, v1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    invoke-virtual {v14, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :cond_1d
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    const/4 v13, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual/range {p1 .. p1}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    move-result-object v4

    goto :goto_30

    :cond_2f
    move-object v4, v13

    :goto_30
    if-eqz p1, :cond_37

    invoke-virtual/range {p1 .. p1}, Landroid/content/IntentSender;->getWhitelistToken()Landroid/os/IBinder;

    move-result-object v5

    goto :goto_38

    :cond_37
    move-object v5, v13

    :goto_38
    iget-object v8, v1, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object/from16 v6, p4

    move-object v7, v0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 p7, v0

    move-object v0, v13

    move-object v13, v15

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityTaskManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v2

    const/16 v3, -0x60

    if-eq v2, v3, :cond_5a

    invoke-static {v2, v0}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    if-eqz v15, :cond_59

    invoke-direct {v1, v15}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    :cond_59
    goto :goto_64

    :cond_5a
    new-instance v0, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v0}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    throw v0
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_60} :catch_60

    :catch_60
    move-exception v0

    goto :goto_64

    :catch_62
    move-exception v0

    move-object v15, v2

    :goto_64
    if-ltz p3, :cond_69

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/app/Activity;->mStartedActivity:Z

    :cond_69
    return-void
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p1

    iget-object v3, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    return-void
.end method

.method public startLocalVoiceInteraction(Landroid/os/Bundle;)V
    .registers 4

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public startLockTask()V
    .registers 3

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->startLockTaskModeByToken(Landroid/os/IBinder;)V

    return-void
.end method

.method public startManagingCursor(Landroid/database/Cursor;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    new-instance v2, Landroid/app/Activity$ManagedCursor;

    invoke-direct {v2, p1}, Landroid/app/Activity$ManagedCursor;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 5

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_18

    :try_start_4
    invoke-virtual {p1, p0}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityTaskManager;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    return v0

    :catch_15
    move-exception v0

    const/4 v0, 0x0

    return v0

    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "startNextMatchingActivity can only be called from a top-level activity"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startPostponedEnterTransition()V
    .registers 2

    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->startPostponedEnterTransition()V

    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 11

    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public stopLocalVoiceInteraction()V
    .registers 3

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    return-void
.end method

.method public stopLockTask()V
    .registers 3

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->stopLockTaskModeByToken(Landroid/os/IBinder;)V

    return-void
.end method

.method public stopManagingCursor(Landroid/database/Cursor;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_23

    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity$ManagedCursor;

    invoke-static {v3}, Landroid/app/Activity$ManagedCursor;->-$$Nest$fgetmCursor(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v4

    if-ne v4, p1, :cond_20

    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_23

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_23
    :goto_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public takeKeyEvents(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    return-void
.end method

.method public triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/app/SearchManager;->triggerSearch(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)V

    return-void
.end method

.method public unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 4

    iget-object v0, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/app/Activity;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3

    iget-object v0, p0, Landroid/app/Activity;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->unregisterCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_b

    :cond_8
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :goto_b
    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public unregisterRemoteAnimations()V
    .registers 3

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->unregisterRemoteAnimations(Landroid/os/IBinder;)V

    return-void
.end method

.method public updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/view/translation/UiTranslationSpec;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    if-nez v0, :cond_f

    new-instance v0, Landroid/view/translation/UiTranslationController;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/translation/UiTranslationController;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    :cond_f
    iget-object v2, p0, Landroid/app/Activity;->mUiTranslationController:Landroid/view/translation/UiTranslationController;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/view/translation/UiTranslationController;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    return-void
.end method
