# classes4.dex

.class Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/display/BrightnessSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessSyncObserver"
.end annotation


# instance fields
.field private mIsObserving:Z

.field private final mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field final synthetic this$0:Lcom/android/internal/display/BrightnessSynchronizer;


# direct methods
.method private constructor <init>(Lcom/android/internal/display/BrightnessSynchronizer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$1;

    invoke-direct {p1, p0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$1;-><init>(Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;)V

    iput-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/display/BrightnessSynchronizer;Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;)V

    return-void
.end method

.method private createBrightnessContentObserver(Landroid/os/Handler;)Landroid/database/ContentObserver;
    .registers 3

    new-instance v0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$2;-><init>(Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method isObserving()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->mIsObserving:Z

    return v0
.end method

.method startObserving(Landroid/os/Handler;)V
    .registers 7

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmContext(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$sfgetBRIGHTNESS_URI()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->createBrightnessContentObserver(Landroid/os/Handler;)Landroid/database/ContentObserver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmDisplayManager(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const-wide/16 v3, 0x8

    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->mIsObserving:Z

    return-void
.end method
