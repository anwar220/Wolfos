# classes3.dex

.class public final Landroid/telephony/ims/DelegateRegistrationState$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/DelegateRegistrationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mState:Landroid/telephony/ims/DelegateRegistrationState;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/ims/DelegateRegistrationState;-><init>(Landroid/telephony/ims/DelegateRegistrationState-IA;)V

    iput-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState$Builder;->mState:Landroid/telephony/ims/DelegateRegistrationState;

    return-void
.end method


# virtual methods
.method public addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState$Builder;->mState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-static {v0}, Landroid/telephony/ims/DelegateRegistrationState;->-$$Nest$fgetmDeregisteredTags(Landroid/telephony/ims/DelegateRegistrationState;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Landroid/telephony/ims/FeatureTagState;

    invoke-direct {v1, p1, p2}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState$Builder;->mState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-static {v0}, Landroid/telephony/ims/DelegateRegistrationState;->-$$Nest$fgetmDeregisteringTags(Landroid/telephony/ims/DelegateRegistrationState;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Landroid/telephony/ims/FeatureTagState;

    invoke-direct {v1, p1, p2}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRegisteredFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/DelegateRegistrationState$Builder;
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState$Builder;->mState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-static {v0}, Landroid/telephony/ims/DelegateRegistrationState;->-$$Nest$fgetmRegisteredTags(Landroid/telephony/ims/DelegateRegistrationState;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRegisteredFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/DelegateRegistrationState$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/DelegateRegistrationState$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState$Builder;->mState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-static {v0}, Landroid/telephony/ims/DelegateRegistrationState;->-$$Nest$fgetmRegisteredTags(Landroid/telephony/ims/DelegateRegistrationState;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addRegisteringFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/DelegateRegistrationState$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/DelegateRegistrationState$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState$Builder;->mState:Landroid/telephony/ims/DelegateRegistrationState;

    invoke-static {v0}, Landroid/telephony/ims/DelegateRegistrationState;->-$$Nest$fgetmRegisteringTags(Landroid/telephony/ims/DelegateRegistrationState;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Landroid/telephony/ims/DelegateRegistrationState;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/DelegateRegistrationState$Builder;->mState:Landroid/telephony/ims/DelegateRegistrationState;

    return-object v0
.end method
