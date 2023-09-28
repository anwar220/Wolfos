# classes3.dex

.class public Landroid/view/WindowManagerGlobalStub;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/view/WindowManagerGlobalStub;
    .registers 1

    const-class v0, Landroid/view/WindowManagerGlobalStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerGlobalStub;

    return-object v0
.end method


# virtual methods
.method public addMiuiFlags(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public checkWindowLeak(Ljava/util/ArrayList;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method
