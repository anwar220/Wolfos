# classes2.dex

.class public final Landroid/location/GnssStatus$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mSatellites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/location/GnssStatus$GnssSvInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addSatellite(IIFFFZZZZFZF)Landroid/location/GnssStatus$Builder;
    .registers 30

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    new-instance v15, Landroid/location/GnssStatus$GnssSvInfo;

    const/16 v16, 0x0

    move-object v2, v15

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move-object v0, v15

    move-object/from16 v15, v16

    invoke-direct/range {v2 .. v15}, Landroid/location/GnssStatus$GnssSvInfo;-><init>(IIFFFZZZZFZFLandroid/location/GnssStatus$GnssSvInfo-IA;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/location/GnssStatus;
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v11, v1, [I

    new-array v12, v1, [F

    new-array v13, v1, [F

    new-array v14, v1, [F

    new-array v15, v1, [F

    new-array v10, v1, [F

    const/4 v2, 0x0

    :goto_15
    array-length v3, v11

    if-ge v2, v3, :cond_29

    iget-object v3, v0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GnssStatus$GnssSvInfo;

    invoke-static {v3}, Landroid/location/GnssStatus$GnssSvInfo;->-$$Nest$fgetmSvidWithFlags(Landroid/location/GnssStatus$GnssSvInfo;)I

    move-result v3

    aput v3, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    array-length v3, v12

    if-ge v2, v3, :cond_3e

    iget-object v3, v0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GnssStatus$GnssSvInfo;

    invoke-static {v3}, Landroid/location/GnssStatus$GnssSvInfo;->-$$Nest$fgetmCn0DbHz(Landroid/location/GnssStatus$GnssSvInfo;)F

    move-result v3

    aput v3, v12, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    array-length v3, v13

    if-ge v2, v3, :cond_53

    iget-object v3, v0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GnssStatus$GnssSvInfo;

    invoke-static {v3}, Landroid/location/GnssStatus$GnssSvInfo;->-$$Nest$fgetmElevation(Landroid/location/GnssStatus$GnssSvInfo;)F

    move-result v3

    aput v3, v13, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_53
    const/4 v2, 0x0

    :goto_54
    array-length v3, v14

    if-ge v2, v3, :cond_68

    iget-object v3, v0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GnssStatus$GnssSvInfo;

    invoke-static {v3}, Landroid/location/GnssStatus$GnssSvInfo;->-$$Nest$fgetmAzimuth(Landroid/location/GnssStatus$GnssSvInfo;)F

    move-result v3

    aput v3, v14, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    :cond_68
    const/4 v2, 0x0

    :goto_69
    array-length v3, v15

    if-ge v2, v3, :cond_7d

    iget-object v3, v0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GnssStatus$GnssSvInfo;

    invoke-static {v3}, Landroid/location/GnssStatus$GnssSvInfo;->-$$Nest$fgetmCarrierFrequency(Landroid/location/GnssStatus$GnssSvInfo;)F

    move-result v3

    aput v3, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    :cond_7d
    const/4 v2, 0x0

    :goto_7e
    array-length v3, v10

    if-ge v2, v3, :cond_92

    iget-object v3, v0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GnssStatus$GnssSvInfo;

    invoke-static {v3}, Landroid/location/GnssStatus$GnssSvInfo;->-$$Nest$fgetmBasebandCn0DbHz(Landroid/location/GnssStatus$GnssSvInfo;)F

    move-result v3

    aput v3, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    :cond_92
    new-instance v16, Landroid/location/GnssStatus;

    const/16 v17, 0x0

    move-object/from16 v2, v16

    move v3, v1

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move-object v9, v10

    move-object/from16 v18, v10

    move-object/from16 v10, v17

    invoke-direct/range {v2 .. v10}, Landroid/location/GnssStatus;-><init>(I[I[F[F[F[F[FLandroid/location/GnssStatus-IA;)V

    return-object v16
.end method

.method public clearSatellites()Landroid/location/GnssStatus$Builder;
    .registers 2

    iget-object v0, p0, Landroid/location/GnssStatus$Builder;->mSatellites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method
