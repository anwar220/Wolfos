# classes2.dex

.class public final Landroid/inputmethodservice/ImsConfigurationTracker;
.super Ljava/lang/Object;


# static fields
.field private static final CONFIG_CHANGED:I = -0x1


# instance fields
.field private mHandledConfigChanges:I

.field private mInitialized:Z

.field private mLastKnownConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mHandledConfigChanges:I

    iput-boolean v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mInitialized:Z

    return-void
.end method


# virtual methods
.method public onBindInput(Landroid/content/res/Resources;)V
    .registers 4

    iget-boolean v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mInitialized:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    if-nez v0, :cond_16

    if-eqz p1, :cond_16

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    :cond_16
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Ljava/lang/Runnable;)V
    .registers 6

    iget-boolean v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mInitialized:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v0

    goto :goto_f

    :cond_e
    const/4 v0, -0x1

    :goto_f
    iget v1, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mHandledConfigChanges:I

    not-int v1, v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_18

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_18
    if-eqz v0, :cond_21

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v2, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    :cond_21
    return-void
.end method

.method public onInitialize(I)V
    .registers 5

    iget-boolean v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mInitialized:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "onInitialize can be called only once."

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iput-boolean v1, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mInitialized:Z

    iput p1, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mHandledConfigChanges:I

    return-void
.end method

.method public setHandledConfigChanges(I)V
    .registers 2

    iput p1, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mHandledConfigChanges:I

    return-void
.end method
