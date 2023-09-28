# classes.dex

.class Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnProjectionStateChangedListenerResourceManager"
.end annotation


# instance fields
.field private final mExecutorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/UiModeManager$InnerListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final mOuterListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/UiModeManager$InnerListener;",
            "Landroid/app/UiModeManager$OnProjectionStateChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mOuterListenerMap:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mExecutorMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;-><init>()V

    return-void
.end method


# virtual methods
.method getExecutor(Landroid/app/UiModeManager$InnerListener;)Ljava/util/concurrent/Executor;
    .registers 3

    iget-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mExecutorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method getOuterListener(Landroid/app/UiModeManager$InnerListener;)Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    .registers 3

    iget-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mOuterListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager$OnProjectionStateChangedListener;

    return-object v0
.end method

.method put(Landroid/app/UiModeManager$InnerListener;Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V
    .registers 5

    iget-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mOuterListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mExecutorMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method remove(Landroid/app/UiModeManager$InnerListener;)V
    .registers 3

    iget-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mOuterListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->mExecutorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
