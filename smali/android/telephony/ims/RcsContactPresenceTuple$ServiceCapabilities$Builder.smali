# classes3.dex

.class public final Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCapabilities:Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;


# direct methods
.method public constructor <init>(ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;-><init>(ZZ)V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->mCapabilities:Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    return-void
.end method


# virtual methods
.method public addSupportedDuplexMode(Ljava/lang/String;)Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->mCapabilities:Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    invoke-static {v0}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->-$$Nest$fgetmSupportedDuplexModeList(Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addUnsupportedDuplexMode(Ljava/lang/String;)Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->mCapabilities:Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    invoke-static {v0}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->-$$Nest$fgetmUnsupportedDuplexModeList(Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->mCapabilities:Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    return-object v0
.end method
