# classes.dex

.class Landroid/bluetooth/BleBroadcastSourceInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BleBroadcastSourceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BleBroadcastSourceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BleBroadcastSourceInfo;
    .registers 33

    move-object/from16 v0, p1

    const-string v1, "BleBroadcastSourceInfo"

    const-string v2, "createFromParcel>"

    invoke-static {v1, v2}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audioSyncState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    const/4 v3, 0x0

    if-lez v13, :cond_6a

    new-array v3, v13, [B

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readByteArray([B)V

    move-object/from16 v22, v3

    goto :goto_6c

    :cond_6a
    move-object/from16 v22, v3

    :goto_6c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v12, v3

    invoke-static {v0, v12}, Landroid/bluetooth/BleBroadcastSourceInfo;->-$$Nest$smreadMapFromParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v11, v3

    invoke-static {v0, v11}, Landroid/bluetooth/BleBroadcastSourceInfo;->-$$Nest$smreadMetadataListFromParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    new-instance v25, Landroid/bluetooth/BleBroadcastSourceInfo;

    move-object/from16 v3, v25

    move-object/from16 v4, v18

    move v5, v2

    move/from16 v6, v19

    move v7, v15

    move/from16 v8, v17

    move/from16 v9, v20

    move v10, v14

    move-object/from16 v26, v11

    move/from16 v11, v21

    move-object/from16 v27, v12

    move-object/from16 v12, v24

    move/from16 v28, v13

    move-object/from16 v13, v22

    move/from16 v29, v14

    move/from16 v14, v23

    move/from16 v30, v15

    move-object/from16 v15, v27

    move-object/from16 v16, v26

    invoke-direct/range {v3 .. v16}, Landroid/bluetooth/BleBroadcastSourceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;BBIIIIILjava/lang/String;[BBLjava/util/Map;Ljava/util/Map;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createFromParcel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/bluetooth/BleBroadcastSourceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/bluetooth/BleBroadcastSourceInfo;
    .registers 3

    new-array v0, p1, [Landroid/bluetooth/BleBroadcastSourceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/bluetooth/BleBroadcastSourceInfo$1;->newArray(I)[Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object p1

    return-object p1
.end method
