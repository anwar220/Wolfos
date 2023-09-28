# classes4.dex

.class public Lcom/android/internal/os/ZygoteInitStub;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/os/ZygoteInitStub;
    .registers 1

    const-class v0, Lcom/android/internal/os/ZygoteInitStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ZygoteInitStub;

    return-object v0
.end method


# virtual methods
.method public checkUsapAllowed(Z)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public loadSoBridge()V
    .registers 1

    return-void
.end method

.method public setLastZygotePid()V
    .registers 1

    return-void
.end method
