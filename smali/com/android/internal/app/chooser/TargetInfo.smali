# classes4.dex

.class public interface abstract Lcom/android/internal/app/chooser/TargetInfo;
.super Ljava/lang/Object;


# direct methods
.method public static prepareIntentForCrossProfileLaunch(Landroid/content/Intent;I)V
    .registers 3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p1, v0, :cond_9

    invoke-virtual {p0, v0}, Landroid/content/Intent;->fixUris(I)V

    :cond_9
    return-void
.end method


# virtual methods
.method public abstract cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;
.end method

.method public abstract getAllSourceIntents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end method

.method public getBadgeContentDescription()Ljava/lang/CharSequence;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBadgeIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getDisplayLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getExtendedInfo()Ljava/lang/CharSequence;
.end method

.method public abstract getResolveInfo()Landroid/content/pm/ResolveInfo;
.end method

.method public abstract getResolvedComponentName()Landroid/content/ComponentName;
.end method

.method public abstract getResolvedIntent()Landroid/content/Intent;
.end method

.method public abstract isPinned()Z
.end method

.method public abstract isSuspended()Z
.end method

.method public abstract start(Landroid/app/Activity;Landroid/os/Bundle;)Z
.end method

.method public abstract startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z
.end method

.method public abstract startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
.end method
