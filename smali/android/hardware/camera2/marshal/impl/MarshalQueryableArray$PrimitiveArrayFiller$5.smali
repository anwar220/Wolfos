# classes.dex

.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller;->getPrimitiveArrayFiller(Ljava/lang/Class;)Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fillPosition(Ljava/lang/Object;ILjava/nio/ByteBuffer;)V
    .registers 5

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {p1, p2, v0}, Ljava/lang/reflect/Array;->setByte(Ljava/lang/Object;IB)V

    return-void
.end method
