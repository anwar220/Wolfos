# classes.dex

.class public final Landroid/app/smartspace/uitemplatedata/TapAction$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/TapAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private mId:Ljava/lang/CharSequence;

.field private mIntent:Landroid/content/Intent;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mShouldShowOnLockScreen:Z

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mId:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mShouldShowOnLockScreen:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/app/smartspace/uitemplatedata/TapAction;
    .registers 11

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_d

    goto :goto_15

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please assign at least 1 valid tap field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_15
    new-instance v0, Landroid/app/smartspace/uitemplatedata/TapAction;

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mId:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v6, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mUserHandle:Landroid/os/UserHandle;

    iget-object v7, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mExtras:Landroid/os/Bundle;

    iget-boolean v8, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mShouldShowOnLockScreen:Z

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/app/smartspace/uitemplatedata/TapAction;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/app/PendingIntent;Landroid/os/UserHandle;Landroid/os/Bundle;ZLandroid/app/smartspace/uitemplatedata/TapAction-IA;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/smartspace/uitemplatedata/TapAction$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/app/smartspace/uitemplatedata/TapAction$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)Landroid/app/smartspace/uitemplatedata/TapAction$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setShouldShowOnLockscreen(Z)Landroid/app/smartspace/uitemplatedata/TapAction$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mShouldShowOnLockScreen:Z

    return-object p0
.end method

.method public setUserHandle(Landroid/os/UserHandle;)Landroid/app/smartspace/uitemplatedata/TapAction$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method
