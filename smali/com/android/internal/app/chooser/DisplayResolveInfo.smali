# classes4.dex

.class public Lcom/android/internal/app/chooser/DisplayResolveInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/app/chooser/TargetInfo;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDisplayIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayLabel:Ljava/lang/CharSequence;

.field private mExtendedInfo:Ljava/lang/CharSequence;

.field private mIsSuspended:Z

.field private mPinned:Z

.field public final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

.field private final mResolvedIntent:Landroid/content/Intent;

.field public mShowMore:Z

.field private final mSourceIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/app/chooser/DisplayResolveInfo$1;

    invoke-direct {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V
    .registers 12

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    iput-boolean v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mShowMore:Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p3, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v2, 0x3000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x40000000  # 2.0f

    and-int/2addr v3, v4

    if-eqz v3, :cond_3e

    const/4 v1, 0x1

    :cond_3e
    iput-boolean v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mIsSuspended:Z

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    iput-boolean v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mShowMore:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    const-class v1, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mIsSuspended:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    const-class v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/app/chooser/DisplayResolveInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    iput-boolean v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mShowMore:Z

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/content/Intent;ILcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    iput-boolean v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mShowMore:Z

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    iput-object p4, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    return-void
.end method

.method private static prepareIntentForCrossProfileLaunch(Landroid/content/Intent;I)V
    .registers 3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p1, v0, :cond_9

    invoke-virtual {p0, v0}, Landroid/content/Intent;->fixUris(I)V

    :cond_9
    return-void
.end method


# virtual methods
.method public addAlternateSourceIntent(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;
    .registers 5

    new-instance v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-object v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/content/Intent;ILcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAllSourceIntents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    return-object v0
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

.method public getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDisplayLabel()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getSubLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    :cond_16
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtendedInfo()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIsShowMore()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mShowMore:Z

    return v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getResolvedComponentName()Landroid/content/ComponentName;
    .registers 4

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getResolvedIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public hasDisplayIcon()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasDisplayLabel()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isPinned()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    return v0
.end method

.method public isSuspended()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mIsSuspended:Z

    return v0
.end method

.method public setDisplayIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDisplayLabel(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public setExtendedInfo(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    return-void
.end method

.method public setPinned(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    return-void
.end method

.method public start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    return v0
.end method

.method public startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-static {v0, p3}, Lcom/android/internal/app/chooser/TargetInfo;->prepareIntentForCrossProfileLaunch(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-static {v0, p3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->prepareIntentForCrossProfileLaunch(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/android/internal/app/ResolverActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    const/4 v0, 0x1

    return v0
.end method

.method public startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/app/chooser/TargetInfo;->prepareIntentForCrossProfileLaunch(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->prepareIntentForCrossProfileLaunch(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2, p3}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mIsSuspended:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
