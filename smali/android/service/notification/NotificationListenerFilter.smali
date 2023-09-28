# classes3.dex

.class public Landroid/service/notification/NotificationListenerFilter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/NotificationListenerFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_TYPES:I = 0xf


# instance fields
.field private mAllowedNotificationTypes:I

.field private mDisallowedPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/notification/NotificationListenerFilter$1;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerFilter$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotificationListenerFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(ILandroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Landroid/content/pm/VersionedPackage;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    iput-object p2, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    const-class v0, Landroid/content/pm/VersionedPackage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public addPackage(Landroid/content/pm/VersionedPackage;)V
    .registers 3

    iget-object v0, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public areAllTypesAllowed()Z
    .registers 3

    iget v0, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    const/16 v1, 0xf

    if-ne v1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDisallowedPackages()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getTypes()I
    .registers 2

    iget v0, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    return v0
.end method

.method public isPackageAllowed(Landroid/content/pm/VersionedPackage;)Z
    .registers 3

    iget-object v0, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTypeAllowed(I)Z
    .registers 3

    iget v0, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public removePackage(Landroid/content/pm/VersionedPackage;)V
    .registers 3

    iget-object v0, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDisallowedPackages(Landroid/util/ArraySet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/content/pm/VersionedPackage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    return-void
.end method

.method public setTypes(I)V
    .registers 2

    iput p1, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    return-void
.end method
