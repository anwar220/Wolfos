# classes2.dex

.class public final Landroid/media/RouteDiscoveryPreference;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RouteDiscoveryPreference$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/RouteDiscoveryPreference;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Landroid/media/RouteDiscoveryPreference;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final mAllowedPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtras:Landroid/os/Bundle;

.field private final mPackageOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferredFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mShouldPerformActiveScan:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAllowedPackages(Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/RouteDiscoveryPreference;->mAllowedPackages:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageOrder(Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/RouteDiscoveryPreference;->mPackageOrder:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreferredFeatures(Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/RouteDiscoveryPreference;->mPreferredFeatures:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShouldPerformActiveScan(Landroid/media/RouteDiscoveryPreference;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/RouteDiscoveryPreference;->mShouldPerformActiveScan:Z

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/media/RouteDiscoveryPreference$1;

    invoke-direct {v0}, Landroid/media/RouteDiscoveryPreference$1;-><init>()V

    sput-object v0, Landroid/media/RouteDiscoveryPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Landroid/media/RouteDiscoveryPreference$Builder;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/RouteDiscoveryPreference$Builder;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v0}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    move-result-object v0

    sput-object v0, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    return-void
.end method

.method constructor <init>(Landroid/media/RouteDiscoveryPreference$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/media/RouteDiscoveryPreference$Builder;->mPreferredFeatures:Ljava/util/List;

    iput-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mPreferredFeatures:Ljava/util/List;

    iget-object v0, p1, Landroid/media/RouteDiscoveryPreference$Builder;->mPackageOrder:Ljava/util/List;

    iput-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mPackageOrder:Ljava/util/List;

    iget-object v0, p1, Landroid/media/RouteDiscoveryPreference$Builder;->mAllowedPackages:Ljava/util/List;

    iput-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mAllowedPackages:Ljava/util/List;

    iget-boolean v0, p1, Landroid/media/RouteDiscoveryPreference$Builder;->mActiveScan:Z

    iput-boolean v0, p0, Landroid/media/RouteDiscoveryPreference;->mShouldPerformActiveScan:Z

    iget-object v0, p1, Landroid/media/RouteDiscoveryPreference$Builder;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mPreferredFeatures:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mPackageOrder:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mAllowedPackages:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/RouteDiscoveryPreference;->mShouldPerformActiveScan:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/media/RouteDiscoveryPreference;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/media/RouteDiscoveryPreference;

    iget-object v3, p0, Landroid/media/RouteDiscoveryPreference;->mPreferredFeatures:Ljava/util/List;

    iget-object v4, v1, Landroid/media/RouteDiscoveryPreference;->mPreferredFeatures:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Landroid/media/RouteDiscoveryPreference;->mPackageOrder:Ljava/util/List;

    iget-object v4, v1, Landroid/media/RouteDiscoveryPreference;->mPackageOrder:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Landroid/media/RouteDiscoveryPreference;->mAllowedPackages:Ljava/util/List;

    iget-object v4, v1, Landroid/media/RouteDiscoveryPreference;->mAllowedPackages:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-boolean v3, p0, Landroid/media/RouteDiscoveryPreference;->mShouldPerformActiveScan:Z

    iget-boolean v4, v1, Landroid/media/RouteDiscoveryPreference;->mShouldPerformActiveScan:Z

    if-ne v3, v4, :cond_32

    goto :goto_33

    :cond_32
    move v0, v2

    :goto_33
    return v0
.end method

.method public getAllowedPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mAllowedPackages:Ljava/util/List;

    return-object v0
.end method

.method public getDeduplicationPackageOrder()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mPackageOrder:Ljava/util/List;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPreferredFeatures()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mPreferredFeatures:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/RouteDiscoveryPreference;->mPreferredFeatures:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/RouteDiscoveryPreference;->mPackageOrder:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/RouteDiscoveryPreference;->mAllowedPackages:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/media/RouteDiscoveryPreference;->mShouldPerformActiveScan:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public shouldPerformActiveScan()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/RouteDiscoveryPreference;->mShouldPerformActiveScan:Z

    return v0
.end method

.method public shouldRemoveDuplicates()Z
    .registers 2

    iget-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mPackageOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RouteDiscoveryRequest{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "preferredFeatures={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RouteDiscoveryPreference;->mPreferredFeatures:Ljava/util/List;

    const-string v2, ", "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeScan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/RouteDiscoveryPreference;->mShouldPerformActiveScan:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mPreferredFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mPackageOrder:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mAllowedPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean v0, p0, Landroid/media/RouteDiscoveryPreference;->mShouldPerformActiveScan:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/media/RouteDiscoveryPreference;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
