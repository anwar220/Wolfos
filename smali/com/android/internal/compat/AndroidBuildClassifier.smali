# classes4.dex

.class public Lcom/android/internal/compat/AndroidBuildClassifier;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDebuggableBuild()Z
    .registers 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    return v0
.end method

.method public isFinalBuild()Z
    .registers 3

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "REL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public platformTargetSdk()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/compat/AndroidBuildClassifier;->isFinalBuild()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0

    :cond_9
    const/16 v0, 0x2710

    return v0
.end method
