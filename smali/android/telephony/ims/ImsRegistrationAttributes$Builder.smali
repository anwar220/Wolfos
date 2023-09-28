# classes3.dex

.class public final Landroid/telephony/ims/ImsRegistrationAttributes$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsRegistrationAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegistrationTech:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mFeatureTags:Ljava/util/Set;

    iput p1, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mRegistrationTech:I

    return-void
.end method

.method private static getAttributeFlags(I)I
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0
.end method


# virtual methods
.method public build()Landroid/telephony/ims/ImsRegistrationAttributes;
    .registers 6

    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes;

    iget v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mRegistrationTech:I

    invoke-static {v1}, Landroid/telephony/ims/RegistrationManager;->getAccessType(I)I

    move-result v2

    iget v3, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mRegistrationTech:I

    invoke-static {v3}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->getAttributeFlags(I)I

    move-result v3

    iget-object v4, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mFeatureTags:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/ims/ImsRegistrationAttributes;-><init>(IIILjava/util/Set;)V

    return-object v0
.end method

.method public setFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/ImsRegistrationAttributes$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/ImsRegistrationAttributes$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_a

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mFeatureTags:Ljava/util/Set;

    return-object p0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "feature tag set must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
