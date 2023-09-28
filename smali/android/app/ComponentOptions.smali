# classes.dex

.class public Landroid/app/ComponentOptions;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_PENDING_INTENT_BACKGROUND_ACTIVITY_ALLOWED:Ljava/lang/String; = "android.pendingIntent.backgroundActivityAllowed"

.field public static final KEY_PENDING_INTENT_BACKGROUND_ACTIVITY_ALLOWED_BY_PERMISSION:Ljava/lang/String; = "android.pendingIntent.backgroundActivityAllowedByPermission"

.field public static final PENDING_INTENT_BAL_ALLOWED_DEFAULT:Z = true


# instance fields
.field private mPendingIntentBalAllowed:Z

.field private mPendingIntentBalAllowedByPermission:Z


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowedByPermission:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowedByPermission:Z

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setDefusable(Z)V

    nop

    const-string v2, "android.pendingIntent.backgroundActivityAllowed"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/ComponentOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    nop

    const-string v0, "android.pendingIntent.backgroundActivityAllowedByPermission"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/ComponentOptions;->setPendingIntentBackgroundActivityLaunchAllowedByPermission(Z)V

    return-void
.end method


# virtual methods
.method public isPendingIntentBackgroundActivityLaunchAllowed()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Z

    return v0
.end method

.method public isPendingIntentBackgroundActivityLaunchAllowedByPermission()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowedByPermission:Z

    return v0
.end method

.method public setPendingIntentBackgroundActivityLaunchAllowed(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Z

    return-void
.end method

.method public setPendingIntentBackgroundActivityLaunchAllowedByPermission(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowedByPermission:Z

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-boolean v1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Z

    const-string v2, "android.pendingIntent.backgroundActivityAllowed"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowedByPermission:Z

    if-eqz v1, :cond_15

    const-string v2, "android.pendingIntent.backgroundActivityAllowedByPermission"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_15
    return-object v0
.end method
