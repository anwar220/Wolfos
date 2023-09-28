# classes2.dex

.class public final Landroid/net/vcn/VcnConfig;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/VcnConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/vcn/VcnConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final GATEWAY_CONNECTION_CONFIGS_KEY:Ljava/lang/String; = "mGatewayConnectionConfigs"

.field private static final IS_TEST_MODE_PROFILE_KEY:Ljava/lang/String; = "mIsTestModeProfile"

.field private static final PACKAGE_NAME_KEY:Ljava/lang/String; = "mPackageName"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mGatewayConnectionConfigs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/vcn/VcnGatewayConnectionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsTestModeProfile:Z

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/net/vcn/VcnConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vcn/VcnConfig;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/net/vcn/VcnConfig$1;

    invoke-direct {v0}, Landroid/net/vcn/VcnConfig$1;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/PersistableBundle;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mPackageName"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    nop

    const-string v0, "mGatewayConnectionConfigs"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    new-instance v2, Landroid/net/vcn/VcnConfig$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/net/vcn/VcnConfig$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v2}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    const-string v1, "mIsTestModeProfile"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/net/vcn/VcnConfig;->mIsTestModeProfile:Z

    invoke-direct {p0}, Landroid/net/vcn/VcnConfig;->validate()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Set;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/net/vcn/VcnGatewayConnectionConfig;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    iput-boolean p3, p0, Landroid/net/vcn/VcnConfig;->mIsTestModeProfile:Z

    invoke-direct {p0}, Landroid/net/vcn/VcnConfig;->validate()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Set;ZLandroid/net/vcn/VcnConfig-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/net/vcn/VcnConfig;-><init>(Ljava/lang/String;Ljava/util/Set;Z)V

    return-void
.end method

.method private validate()V
    .registers 3

    iget-object v0, p0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    const-string v1, "packageName was null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    const-string v1, "gatewayConnectionConfigs was empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/net/vcn/VcnConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnConfig;

    iget-object v2, p0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    iget-object v3, v0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-boolean v2, p0, Landroid/net/vcn/VcnConfig;->mIsTestModeProfile:Z

    iget-boolean v3, v0, Landroid/net/vcn/VcnConfig;->mIsTestModeProfile:Z

    if-ne v2, v3, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    nop

    :goto_26
    return v1
.end method

.method public getGatewayConnectionConfigs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/vcn/VcnGatewayConnectionConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProvisioningPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/vcn/VcnConfig;->mIsTestModeProfile:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isTestModeProfile()Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/vcn/VcnConfig;->mIsTestModeProfile:Z

    return v0
.end method

.method public toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 5

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v1, p0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    const-string v2, "mPackageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Landroid/net/vcn/VcnConfig$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/net/vcn/VcnConfig$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v2}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "mGatewayConnectionConfigs"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    iget-boolean v2, p0, Landroid/net/vcn/VcnConfig;->mIsTestModeProfile:Z

    const-string v3, "mIsTestModeProfile"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Landroid/net/vcn/VcnConfig;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
