# classes3.dex

.class public final Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsContactUceCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OptionsBuilder"
.end annotation


# instance fields
.field private final mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/RcsContactUceCapability;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/telephony/ims/RcsContactUceCapability;-><init>(Landroid/net/Uri;IILandroid/telephony/ims/RcsContactUceCapability-IA;)V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/RcsContactUceCapability;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/telephony/ims/RcsContactUceCapability;-><init>(Landroid/net/Uri;IILandroid/telephony/ims/RcsContactUceCapability-IA;)V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    return-void
.end method


# virtual methods
.method public addFeatureTag(Ljava/lang/String;)Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    invoke-static {v0}, Landroid/telephony/ims/RcsContactUceCapability;->-$$Nest$fgetmFeatureTags(Landroid/telephony/ims/RcsContactUceCapability;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    invoke-static {v0}, Landroid/telephony/ims/RcsContactUceCapability;->-$$Nest$fgetmFeatureTags(Landroid/telephony/ims/RcsContactUceCapability;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Landroid/telephony/ims/RcsContactUceCapability;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    return-object v0
.end method

.method public setRequestResult(I)Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    invoke-static {v0, p1}, Landroid/telephony/ims/RcsContactUceCapability;->-$$Nest$fputmRequestResult(Landroid/telephony/ims/RcsContactUceCapability;I)V

    return-object p0
.end method
