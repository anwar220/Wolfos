# classes3.dex

.class public Landroid/os/perfdebug/VsyncFrame;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Landroid/os/perfdebug/VsyncFrame;
    .registers 1

    const-class v0, Landroid/os/perfdebug/VsyncFrame;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/VsyncFrame;

    return-object v0
.end method


# virtual methods
.method public updateCurFrame(I)V
    .registers 2

    return-void
.end method
