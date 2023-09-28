# classes.dex

.class public final Landroid/app/smartspace/SmartspaceAction$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/SmartspaceAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;

.field private mExtras:Landroid/os/Bundle;

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mId:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mId:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public build()Landroid/app/smartspace/SmartspaceAction;
    .registers 13

    new-instance v11, Landroid/app/smartspace/SmartspaceAction;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mId:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mContentDescription:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v7, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mIntent:Landroid/content/Intent;

    iget-object v8, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mUserHandle:Landroid/os/UserHandle;

    iget-object v9, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/app/smartspace/SmartspaceAction;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;Landroid/app/smartspace/SmartspaceAction-IA;)V

    return-object v11
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/app/smartspace/SmartspaceAction$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/smartspace/SmartspaceAction$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/smartspace/SmartspaceAction$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/app/smartspace/SmartspaceAction$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)Landroid/app/smartspace/SmartspaceAction$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroid/app/smartspace/SmartspaceAction$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setUserHandle(Landroid/os/UserHandle;)Landroid/app/smartspace/SmartspaceAction$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceAction$Builder;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method
