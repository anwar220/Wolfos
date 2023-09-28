# classes.dex

.class public final Landroid/graphics/ImageDecoder$DecodeException;
.super Ljava/io/IOException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DecodeException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ImageDecoder$DecodeException$Error;
    }
.end annotation


# static fields
.field public static final SOURCE_EXCEPTION:I = 0x1

.field public static final SOURCE_INCOMPLETE:I = 0x2

.field public static final SOURCE_MALFORMED_DATA:I = 0x3


# instance fields
.field final mError:I

.field final mSource:Landroid/graphics/ImageDecoder$Source;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;Landroid/graphics/ImageDecoder$Source;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/graphics/ImageDecoder$DecodeException;->errorMessage(ILjava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Landroid/graphics/ImageDecoder$DecodeException;->mError:I

    iput-object p4, p0, Landroid/graphics/ImageDecoder$DecodeException;->mSource:Landroid/graphics/ImageDecoder$Source;

    return-void
.end method

.method constructor <init>(ILjava/lang/Throwable;Landroid/graphics/ImageDecoder$Source;)V
    .registers 5

    invoke-static {p1, p2}, Landroid/graphics/ImageDecoder$DecodeException;->errorMessage(ILjava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Landroid/graphics/ImageDecoder$DecodeException;->mError:I

    iput-object p3, p0, Landroid/graphics/ImageDecoder$DecodeException;->mSource:Landroid/graphics/ImageDecoder$Source;

    return-void
.end method

.method private static errorMessage(ILjava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_20

    const-string v0, ""

    return-object v0

    :pswitch_6  #0x3
    const-string v0, "Input contained an error."

    return-object v0

    :pswitch_9  #0x2
    const-string v0, "Input was incomplete."

    return-object v0

    :pswitch_c  #0x1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in input: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_c  #00000001
        :pswitch_9  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method


# virtual methods
.method public getError()I
    .registers 2

    iget v0, p0, Landroid/graphics/ImageDecoder$DecodeException;->mError:I

    return v0
.end method

.method public getSource()Landroid/graphics/ImageDecoder$Source;
    .registers 2

    iget-object v0, p0, Landroid/graphics/ImageDecoder$DecodeException;->mSource:Landroid/graphics/ImageDecoder$Source;

    return-object v0
.end method
