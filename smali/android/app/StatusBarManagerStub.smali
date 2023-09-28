# classes.dex

.class public Landroid/app/StatusBarManagerStub;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/app/StatusBarManagerStub;
    .registers 1

    const-class v0, Landroid/app/StatusBarManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManagerStub;

    return-object v0
.end method


# virtual methods
.method public setStatus(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    return-void
.end method
