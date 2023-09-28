# classes3.dex

.class public final Landroid/telephony/ims/RcsContactUceCapability;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;,
        Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;,
        Landroid/telephony/ims/RcsContactUceCapability$RequestResult;,
        Landroid/telephony/ims/RcsContactUceCapability$SourceType;,
        Landroid/telephony/ims/RcsContactUceCapability$CapabilityMechanism;
    }
.end annotation


# static fields
.field public static final CAPABILITY_MECHANISM_OPTIONS:I = 0x2

.field public static final CAPABILITY_MECHANISM_PRESENCE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_RESULT_FOUND:I = 0x3

.field public static final REQUEST_RESULT_NOT_FOUND:I = 0x2

.field public static final REQUEST_RESULT_NOT_ONLINE:I = 0x1

.field public static final REQUEST_RESULT_UNKNOWN:I = 0x0

.field public static final SOURCE_TYPE_CACHED:I = 0x1

.field public static final SOURCE_TYPE_NETWORK:I


# instance fields
.field private mCapabilityMechanism:I

.field private final mContactUri:Landroid/net/Uri;

.field private mEntityUri:Landroid/net/Uri;

.field private final mFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPresenceTuples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactPresenceTuple;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestResult:I

.field private mSourceType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmFeatureTags(Landroid/telephony/ims/RcsContactUceCapability;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mFeatureTags:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPresenceTuples(Landroid/telephony/ims/RcsContactUceCapability;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mPresenceTuples:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEntityUri(Landroid/telephony/ims/RcsContactUceCapability;Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mEntityUri:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRequestResult(Landroid/telephony/ims/RcsContactUceCapability;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mRequestResult:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/ims/RcsContactUceCapability$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsContactUceCapability$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsContactUceCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mFeatureTags:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mPresenceTuples:Ljava/util/List;

    iput-object p1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mContactUri:Landroid/net/Uri;

    iput p2, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    iput p3, p0, Landroid/telephony/ims/RcsContactUceCapability;->mSourceType:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;IILandroid/telephony/ims/RcsContactUceCapability-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/RcsContactUceCapability;-><init>(Landroid/net/Uri;II)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mFeatureTags:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mPresenceTuples:Ljava/util/List;

    const-class v2, Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Landroid/telephony/ims/RcsContactUceCapability;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ims/RcsContactUceCapability;->mSourceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ims/RcsContactUceCapability;->mRequestResult:I

    const-class v2, Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Landroid/telephony/ims/RcsContactUceCapability;->mEntityUri:Landroid/net/Uri;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-class v0, Landroid/telephony/ims/RcsContactPresenceTuple;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v3, Landroid/telephony/ims/RcsContactPresenceTuple;

    invoke-virtual {p1, v1, v0, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/ims/RcsContactUceCapability-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsContactUceCapability;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCapabilityMechanism()I
    .registers 2

    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    return v0
.end method

.method public getCapabilityTuple(Ljava/lang/String;)Landroid/telephony/ims/RcsContactPresenceTuple;
    .registers 6

    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    return-object v1

    :cond_7
    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mPresenceTuples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsContactPresenceTuple;

    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactPresenceTuple;->getServiceId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2a

    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactPresenceTuple;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    return-object v2

    :cond_2a
    goto :goto_d

    :cond_2b
    return-object v1
.end method

.method public getCapabilityTuples()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactPresenceTuple;",
            ">;"
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mPresenceTuples:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContactUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getEntityUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mEntityUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getFeatureTags()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mFeatureTags:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRequestResult()I
    .registers 2

    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mRequestResult:I

    return v0
.end method

.method public getSourceType()I
    .registers 2

    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mSourceType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RcsContactUceCapability"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_13

    const-string v1, "(presence) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_13
    if-ne v1, v2, :cond_1b

    const-string v1, "(options) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_1b
    const-string v1, "(?) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_20
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    const-string v4, "XXX"

    const-string/jumbo v5, "null"

    if-eqz v1, :cond_35

    const-string/jumbo v1, "uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_45

    :cond_35
    const-string/jumbo v1, "uri (isNull)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mContactUri:Landroid/net/Uri;

    if-eqz v1, :cond_41

    move-object v1, v4

    goto :goto_42

    :cond_41
    move-object v1, v5

    :goto_42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_45
    const-string v1, ", sourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mSourceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mRequestResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-eqz v1, :cond_6b

    const-string v1, "entity uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mEntityUri:Landroid/net/Uri;

    if-eqz v1, :cond_67

    move-object v5, v1

    :cond_67
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_79

    :cond_6b
    const-string v1, "entity uri (isNull)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mEntityUri:Landroid/net/Uri;

    if-eqz v1, :cond_75

    goto :goto_76

    :cond_75
    move-object v4, v5

    :goto_76
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_79
    iget v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    const-string/jumbo v4, "}"

    if-ne v1, v3, :cond_8e

    const-string v1, ", presenceTuples={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mPresenceTuples:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9d

    :cond_8e
    if-ne v1, v2, :cond_9d

    const-string v1, ", featureTags={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mFeatureTags:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9d
    :goto_9d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilityMechanism:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mSourceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mRequestResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mEntityUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mFeatureTags:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mPresenceTuples:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    return-void
.end method
