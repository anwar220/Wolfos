# classes2.dex

.class public Landroid/media/tv/interactive/TvInteractiveAppView;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;,
        Landroid/media/tv/interactive/TvInteractiveAppView$OnUnhandledInputEventListener;,
        Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;
    }
.end annotation


# static fields
.field public static final BI_INTERACTIVE_APP_KEY_ALIAS:Ljava/lang/String; = "alias"

.field public static final BI_INTERACTIVE_APP_KEY_CERTIFICATE:Ljava/lang/String; = "certificate"

.field public static final BI_INTERACTIVE_APP_KEY_HTTP_ADDITIONAL_HEADERS:Ljava/lang/String; = "http_additional_headers"

.field public static final BI_INTERACTIVE_APP_KEY_HTTP_USER_AGENT:Ljava/lang/String; = "http_user_agent"

.field public static final BI_INTERACTIVE_APP_KEY_PRIVATE_KEY:Ljava/lang/String; = "private_key"

.field private static final DEBUG:Z = false

.field public static final ERROR_KEY_METHOD_NAME:Ljava/lang/String; = "method_name"

.field private static final SET_TVVIEW_FAIL:I = 0x2

.field private static final SET_TVVIEW_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TvInteractiveAppView"

.field private static final UNSET_TVVIEW_FAIL:I = 0x4

.field private static final UNSET_TVVIEW_SUCCESS:I = 0x3


# instance fields
.field private final mAttrs:Landroid/util/AttributeSet;

.field private mCallback:Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

.field private mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final mCallbackLock:Ljava/lang/Object;

.field private final mDefStyleAttr:I

.field private final mFinishedInputEventCallback:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$FinishedInputEventCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mMediaViewCreated:Z

.field private mMediaViewFrame:Landroid/graphics/Rect;

.field private mOnUnhandledInputEventListener:Landroid/media/tv/interactive/TvInteractiveAppView$OnUnhandledInputEventListener;

.field private final mParser:Landroid/content/res/XmlResourceParser;

.field private mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

.field private mSessionCallback:Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceChanged:Z

.field private mSurfaceFormat:I

.field private mSurfaceHeight:I

.field private final mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSurfaceViewBottom:I

.field private mSurfaceViewLeft:I

.field private mSurfaceViewRight:I

.field private mSurfaceViewTop:I

.field private mSurfaceWidth:I

.field private final mTvInteractiveAppManager:Landroid/media/tv/interactive/TvInteractiveAppManager;

.field private mUseRequestedSurfaceLayout:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mCallback:Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSessionCallback:Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurface(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/view/Surface;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceChanged(Landroid/media/tv/interactive/TvInteractiveAppView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceChanged:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceFormat(Landroid/media/tv/interactive/TvInteractiveAppView;)I
    .registers 1

    iget p0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceFormat:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceHeight(Landroid/media/tv/interactive/TvInteractiveAppView;)I
    .registers 1

    iget p0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceWidth(Landroid/media/tv/interactive/TvInteractiveAppView;)I
    .registers 1

    iget p0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmMediaViewCreated(Landroid/media/tv/interactive/TvInteractiveAppView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mMediaViewCreated:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMediaViewFrame(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mMediaViewFrame:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSession(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSessionCallback:Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurface(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/view/Surface;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceChanged(Landroid/media/tv/interactive/TvInteractiveAppView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceChanged:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceFormat(Landroid/media/tv/interactive/TvInteractiveAppView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceFormat:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceHeight(Landroid/media/tv/interactive/TvInteractiveAppView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceViewBottom(Landroid/media/tv/interactive/TvInteractiveAppView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceViewBottom:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceViewLeft(Landroid/media/tv/interactive/TvInteractiveAppView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceViewLeft:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceViewRight(Landroid/media/tv/interactive/TvInteractiveAppView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceViewRight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceViewTop(Landroid/media/tv/interactive/TvInteractiveAppView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceViewTop:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceWidth(Landroid/media/tv/interactive/TvInteractiveAppView;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUseRequestedSurfaceLayout(Landroid/media/tv/interactive/TvInteractiveAppView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mUseRequestedSurfaceLayout:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateSessionMediaView(Landroid/media/tv/interactive/TvInteractiveAppView;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->createSessionMediaView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchSurfaceChanged(Landroid/media/tv/interactive/TvInteractiveAppView;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppView;->dispatchSurfaceChanged(III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrelayoutSessionMediaView(Landroid/media/tv/interactive/TvInteractiveAppView;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->relayoutSessionMediaView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSessionSurface(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/view/Surface;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->setSessionSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/tv/interactive/TvInteractiveAppView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mCallbackLock:Ljava/lang/Object;

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppView$1;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppView$1;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppView$3;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppView$3;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mFinishedInputEventCallback:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$FinishedInputEventCallback;

    invoke-static {p2}, Landroid/content/res/Resources;->getAttributeSetSourceResId(Landroid/util/AttributeSet;)I

    move-result v0

    const-string v1, "TvInteractiveAppView"

    if-eqz v0, :cond_3d

    const-string v2, "Build local AttributeSet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mAttrs:Landroid/util/AttributeSet;

    goto :goto_47

    :cond_3d
    const-string v2, "Use passed in AttributeSet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mParser:Landroid/content/res/XmlResourceParser;

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mAttrs:Landroid/util/AttributeSet;

    :goto_47
    iput p3, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mDefStyleAttr:I

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->resetSurfaceView()V

    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tv_interactive_app"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager;

    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mTvInteractiveAppManager:Landroid/media/tv/interactive/TvInteractiveAppManager;

    return-void
.end method

.method private createSessionMediaView()V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mMediaViewCreated:Z

    if-eqz v0, :cond_f

    goto :goto_1e

    :cond_f
    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->getViewFrameOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mMediaViewFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    invoke-virtual {v1, p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->createMediaView(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mMediaViewCreated:Z

    return-void

    :cond_1e
    :goto_1e
    return-void
.end method

.method private dispatchSurfaceChanged(III)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->dispatchSurfaceChanged(III)V

    return-void
.end method

.method private getViewFrameOnScreen()Landroid/graphics/Rect;
    .registers 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private relayoutSessionMediaView()V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mMediaViewCreated:Z

    if-nez v0, :cond_f

    goto :goto_24

    :cond_f
    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->getViewFrameOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mMediaViewFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    return-void

    :cond_1c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    invoke-virtual {v1, v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->relayoutMediaView(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mMediaViewFrame:Landroid/graphics/Rect;

    return-void

    :cond_24
    :goto_24
    return-void
.end method

.method private removeSessionMediaView()V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_13

    iget-boolean v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mMediaViewCreated:Z

    if-nez v1, :cond_9

    goto :goto_13

    :cond_9
    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->removeMediaView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mMediaViewCreated:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mMediaViewFrame:Landroid/graphics/Rect;

    return-void

    :cond_13
    :goto_13
    return-void
.end method

.method private resetInternal()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSessionCallback:Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v1, :cond_1a

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->setSessionSurface(Landroid/view/Surface;)V

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->removeSessionMediaView()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mUseRequestedSurfaceLayout:Z

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->release()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->resetSurfaceView()V

    :cond_1a
    return-void
.end method

.method private resetSurfaceView()V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->removeView(Landroid/view/View;)V

    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurface:Landroid/view/Surface;

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppView$2;

    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mAttrs:Landroid/util/AttributeSet;

    iget v3, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mDefStyleAttr:I

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/media/tv/interactive/TvInteractiveAppView$2;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setSecure(Z)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setSessionSurface(Landroid/view/Surface;)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private unsetTvView()I
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->getInputSession()Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_1c

    :cond_b
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->getInputSession()Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$Session;->setInteractiveAppSession(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->setInputSession(Landroid/media/tv/TvInputManager$Session;)V

    const/4 v0, 0x3

    return v0

    :cond_1c
    :goto_1c
    const/4 v0, 0x4

    return v0
.end method


# virtual methods
.method public clearCallback()V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mCallback:Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public clearOnUnhandledInputEventListener()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mOnUnhandledInputEventListener:Landroid/media/tv/interactive/TvInteractiveAppView$OnUnhandledInputEventListener;

    return-void
.end method

.method public createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V

    :cond_7
    return-void
.end method

.method public destroyBiInteractiveApp(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->destroyBiInteractiveApp(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    return v2

    :cond_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v0

    iget-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    iget-object v4, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mFinishedInputEventCallback:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$FinishedInputEventCallback;

    iget-object v5, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v0, v4, v5}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/interactive/TvInteractiveAppManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    return v1
.end method

.method public dispatchUnhandledInputEvent(Landroid/view/InputEvent;)Z
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mOnUnhandledInputEventListener:Landroid/media/tv/interactive/TvInteractiveAppView$OnUnhandledInputEventListener;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppView$OnUnhandledInputEventListener;->onUnhandledInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->onUnhandledInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public getInteractiveAppSession()Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    return-object v0
.end method

.method public getOnUnhandledInputEventListener()Landroid/media/tv/interactive/TvInteractiveAppView$OnUnhandledInputEventListener;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mOnUnhandledInputEventListener:Landroid/media/tv/interactive/TvInteractiveAppView$OnUnhandledInputEventListener;

    return-object v0
.end method

.method public notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->notifyError(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->createSessionMediaView()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->removeSessionMediaView()V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 11

    iget-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mUseRequestedSurfaceLayout:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    iget v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceViewLeft:I

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceViewTop:I

    iget v3, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceViewRight:I

    iget v4, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceViewBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceView;->layout(IIII)V

    goto :goto_1c

    :cond_12
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/SurfaceView;->layout(IIII)V

    :goto_1c
    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceView;->measure(II)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getMeasuredState()I

    move-result v2

    invoke-static {v0, p1, v2}, Landroid/media/tv/interactive/TvInteractiveAppView;->resolveSizeAndState(III)I

    move-result v3

    shl-int/lit8 v4, v2, 0x10

    invoke-static {v1, p2, v4}, Landroid/media/tv/interactive/TvInteractiveAppView;->resolveSizeAndState(III)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/media/tv/interactive/TvInteractiveAppView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onUnhandledInputEvent(Landroid/view/InputEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    if-nez p2, :cond_e

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->createSessionMediaView()V

    goto :goto_11

    :cond_e
    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->removeSessionMediaView()V

    :goto_11
    return-void
.end method

.method public prepareInteractiveApp(Ljava/lang/String;I)V
    .registers 6

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSessionCallback:Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mTvInteractiveAppManager:Landroid/media/tv/interactive/TvInteractiveAppManager;

    if-eqz v1, :cond_10

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, v0, v2}, Landroid/media/tv/interactive/TvInteractiveAppManager;->createSession(Ljava/lang/String;ILandroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;Landroid/os/Handler;)V

    :cond_10
    return-void
.end method

.method public reset()V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->resetInternal()V

    return-void
.end method

.method public resetInteractiveApp()V
    .registers 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->resetInteractiveApp()V

    :cond_7
    return-void
.end method

.method public sendCurrentChannelLcn(I)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->sendCurrentChannelLcn(I)V

    :cond_7
    return-void
.end method

.method public sendCurrentChannelUri(Landroid/net/Uri;)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->sendCurrentChannelUri(Landroid/net/Uri;)V

    :cond_7
    return-void
.end method

.method public sendCurrentTvInputId(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->sendCurrentTvInputId(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public sendSigningResult(Ljava/lang/String;[B)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->sendSigningResult(Ljava/lang/String;[B)V

    :cond_7
    return-void
.end method

.method public sendStreamVolume(F)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->sendStreamVolume(F)V

    :cond_7
    return-void
.end method

.method public sendTrackInfoList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->sendTrackInfoList(Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method public setCallback(Ljava/util/concurrent/Executor;Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;)V
    .registers 5

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mCallback:Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public setOnUnhandledInputEventListener(Ljava/util/concurrent/Executor;Landroid/media/tv/interactive/TvInteractiveAppView$OnUnhandledInputEventListener;)V
    .registers 3

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mOnUnhandledInputEventListener:Landroid/media/tv/interactive/TvInteractiveAppView$OnUnhandledInputEventListener;

    return-void
.end method

.method public setTeletextAppEnabled(Z)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->setTeletextAppEnabled(Z)V

    :cond_7
    return-void
.end method

.method public setTvView(Landroid/media/tv/TvView;)I
    .registers 4

    if-nez p1, :cond_7

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->unsetTvView()I

    move-result v0

    return v0

    :cond_7
    invoke-virtual {p1}, Landroid/media/tv/TvView;->getInputSession()Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-nez v1, :cond_12

    goto :goto_1c

    :cond_12
    invoke-virtual {v1, v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->setInputSession(Landroid/media/tv/TvInputManager$Session;)V

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$Session;->setInteractiveAppSession(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V

    const/4 v1, 0x1

    return v1

    :cond_1c
    :goto_1c
    const/4 v1, 0x2

    return v1
.end method

.method public startInteractiveApp()V
    .registers 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->startInteractiveApp()V

    :cond_7
    return-void
.end method

.method public stopInteractiveApp()V
    .registers 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->stopInteractiveApp()V

    :cond_7
    return-void
.end method
