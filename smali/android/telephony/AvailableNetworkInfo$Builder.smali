# classes3.dex

.class public final Landroid/telephony/AvailableNetworkInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/AvailableNetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mMccMncs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPriority:I

.field private mRadioAccessSpecifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;"
        }
    .end annotation
.end field

.field private mSubId:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mSubId:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mPriority:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mMccMncs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mRadioAccessSpecifiers:Ljava/util/ArrayList;

    iput p1, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mSubId:I

    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/AvailableNetworkInfo;
    .registers 10

    iget v0, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mSubId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1b

    new-instance v0, Landroid/telephony/AvailableNetworkInfo;

    iget v3, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mSubId:I

    iget v4, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mPriority:I

    iget-object v5, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mMccMncs:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mRadioAccessSpecifiers:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/telephony/AvailableNetworkInfo;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/telephony/AvailableNetworkInfo-IA;)V

    return-object v0

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A valid subId must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMccMncs(Ljava/util/List;)Landroid/telephony/AvailableNetworkInfo$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/AvailableNetworkInfo$Builder;"
        }
    .end annotation

    const-string v0, "A non-null List of mccmncs must be set. An empty List is still accepted. Please read documentation in AvailableNetworkInfo to see consequences of an empty List."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mMccMncs:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setPriority(I)Landroid/telephony/AvailableNetworkInfo$Builder;
    .registers 4

    const/4 v0, 0x3

    if-gt p1, v0, :cond_9

    const/4 v0, 0x1

    if-lt p1, v0, :cond_9

    iput p1, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mPriority:I

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A valid priority must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRadioAccessSpecifiers(Ljava/util/List;)Landroid/telephony/AvailableNetworkInfo$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;)",
            "Landroid/telephony/AvailableNetworkInfo$Builder;"
        }
    .end annotation

    const-string v0, "A non-null List of RadioAccessSpecifiers must be set. An empty List is still accepted. Please read documentation in AvailableNetworkInfo to see consequences of an empty List."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/AvailableNetworkInfo$Builder;->mRadioAccessSpecifiers:Ljava/util/ArrayList;

    return-object p0
.end method
