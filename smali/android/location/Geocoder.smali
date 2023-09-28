# classes2.dex

.class public final Landroid/location/Geocoder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Geocoder$SynchronousGeocoder;,
        Landroid/location/Geocoder$GeocoderImpl;,
        Landroid/location/Geocoder$GeocodeListener;
    }
.end annotation


# static fields
.field private static final TIMEOUT_MS:J = 0xea60L


# instance fields
.field private final mParams:Landroid/location/GeocoderParams;

.field private final mService:Landroid/location/ILocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/location/GeocoderParams;

    invoke-direct {v0, p1, p2}, Landroid/location/GeocoderParams;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    nop

    const-string v0, "location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    return-void
.end method

.method public static isPresent()Z
    .registers 3

    nop

    const-string v0, "location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/ILocationManager;

    :try_start_11
    invoke-interface {v0}, Landroid/location/ILocationManager;->geocoderIsPresent()Z

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_16

    return v1

    :catch_16
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public getFromLocation(DDI)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v6, Landroid/location/Geocoder$SynchronousGeocoder;

    invoke-direct {v6}, Landroid/location/Geocoder$SynchronousGeocoder;-><init>()V

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDILandroid/location/Geocoder$GeocodeListener;)V

    invoke-virtual {v6}, Landroid/location/Geocoder$SynchronousGeocoder;->getResults()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFromLocation(DDILandroid/location/Geocoder$GeocodeListener;)V
    .registers 23

    move-object/from16 v1, p0

    const-wide v4, -0x3fa9800000000000L  # -90.0

    const-wide v6, 0x4056800000000000L  # 90.0

    const-string v8, "latitude"

    move-wide/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    const-wide v11, -0x3f99800000000000L  # -180.0

    const-wide v13, 0x4066800000000000L  # 180.0

    const-string v15, "longitude"

    move-wide/from16 v9, p3

    invoke-static/range {v9 .. v15}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    :try_start_24
    iget-object v2, v1, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    iget-object v8, v1, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    new-instance v9, Landroid/location/Geocoder$GeocoderImpl;
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2a} :catch_3c

    move-object/from16 v10, p6

    :try_start_2c
    invoke-direct {v9, v10}, Landroid/location/Geocoder$GeocoderImpl;-><init>(Landroid/location/Geocoder$GeocodeListener;)V

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move/from16 v7, p5

    invoke-interface/range {v2 .. v9}, Landroid/location/ILocationManager;->getFromLocation(DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_38} :catch_3a

    nop

    return-void

    :catch_3a
    move-exception v0

    goto :goto_3f

    :catch_3c
    move-exception v0

    move-object/from16 v10, p6

    :goto_3f
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getFromLocationName(Ljava/lang/String;I)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v10}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IDDDD)",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v11, Landroid/location/Geocoder$SynchronousGeocoder;

    invoke-direct {v11}, Landroid/location/Geocoder$SynchronousGeocoder;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;IDDDDLandroid/location/Geocoder$GeocodeListener;)V

    invoke-virtual {v11}, Landroid/location/Geocoder$SynchronousGeocoder;->getResults()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFromLocationName(Ljava/lang/String;IDDDDLandroid/location/Geocoder$GeocodeListener;)V
    .registers 28

    move-object/from16 v1, p0

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const-wide v4, -0x3fa9800000000000L  # -90.0

    const-wide v6, 0x4056800000000000L  # 90.0

    const-string v8, "lowerLeftLatitude"

    move-wide/from16 v2, p3

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    const-wide v11, -0x3f99800000000000L  # -180.0

    const-wide v13, 0x4066800000000000L  # 180.0

    const-string v15, "lowerLeftLongitude"

    move-wide/from16 v9, p5

    invoke-static/range {v9 .. v15}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    const-string v8, "upperRightLatitude"

    move-wide/from16 v2, p7

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    const-string v15, "upperRightLongitude"

    move-wide/from16 v9, p9

    invoke-static/range {v9 .. v15}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    :try_start_3a
    iget-object v2, v1, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    iget-object v13, v1, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    new-instance v14, Landroid/location/Geocoder$GeocoderImpl;
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_40} :catch_58

    move-object/from16 v15, p11

    :try_start_42
    invoke-direct {v14, v15}, Landroid/location/Geocoder$GeocoderImpl;-><init>(Landroid/location/Geocoder$GeocodeListener;)V

    move-object/from16 v3, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move/from16 v12, p2

    invoke-interface/range {v2 .. v14}, Landroid/location/ILocationManager;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_54} :catch_56

    nop

    return-void

    :catch_56
    move-exception v0

    goto :goto_5b

    :catch_58
    move-exception v0

    move-object/from16 v15, p11

    :goto_5b
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getFromLocationName(Ljava/lang/String;ILandroid/location/Geocoder$GeocodeListener;)V
    .registers 16

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v11, p3

    invoke-virtual/range {v0 .. v11}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;IDDDDLandroid/location/Geocoder$GeocodeListener;)V

    return-void
.end method
