# classes4.dex

.class interface abstract Lcom/android/framework/protobuf/MapFieldSchema;
.super Ljava/lang/Object;


# virtual methods
.method public abstract forMapData(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
.end method

.method public abstract forMapMetadata(Ljava/lang/Object;)Lcom/android/framework/protobuf/MapEntryLite$Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "**>;"
        }
    .end annotation
.end method

.method public abstract forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
.end method

.method public abstract getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I
.end method

.method public abstract isImmutable(Ljava/lang/Object;)Z
.end method

.method public abstract mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract newMapField(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract toImmutable(Ljava/lang/Object;)Ljava/lang/Object;
.end method
