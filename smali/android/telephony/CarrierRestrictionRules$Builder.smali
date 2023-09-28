# classes3.dex

.class public final Landroid/telephony/CarrierRestrictionRules$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierRestrictionRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mRules:Landroid/telephony/CarrierRestrictionRules;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/CarrierRestrictionRules;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/CarrierRestrictionRules;-><init>(Landroid/telephony/CarrierRestrictionRules-IA;)V

    iput-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/CarrierRestrictionRules;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    return-object v0
.end method

.method public setAllCarriersAllowed()Landroid/telephony/CarrierRestrictionRules$Builder;
    .registers 3

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fgetmAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fgetmExcludedCarriers(Landroid/telephony/CarrierRestrictionRules;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmCarrierRestrictionDefault(Landroid/telephony/CarrierRestrictionRules;I)V

    return-object p0
.end method

.method public setAllowedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)",
            "Landroid/telephony/CarrierRestrictionRules$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;Ljava/util/List;)V

    return-object p0
.end method

.method public setDefaultCarrierRestriction(I)Landroid/telephony/CarrierRestrictionRules$Builder;
    .registers 3

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0, p1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmCarrierRestrictionDefault(Landroid/telephony/CarrierRestrictionRules;I)V

    return-object p0
.end method

.method public setExcludedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)",
            "Landroid/telephony/CarrierRestrictionRules$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmExcludedCarriers(Landroid/telephony/CarrierRestrictionRules;Ljava/util/List;)V

    return-object p0
.end method

.method public setMultiSimPolicy(I)Landroid/telephony/CarrierRestrictionRules$Builder;
    .registers 3

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0, p1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmMultiSimPolicy(Landroid/telephony/CarrierRestrictionRules;I)V

    return-object p0
.end method
