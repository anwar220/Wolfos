# classes3.dex

.class public Landroid/provider/CallLog$CallComposerLoggingException;
.super Ljava/lang/Throwable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallComposerLoggingException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CallLog$CallComposerLoggingException$CallComposerLoggingError;
    }
.end annotation


# static fields
.field public static final ERROR_INPUT_CLOSED:I = 0x3

.field public static final ERROR_REMOTE_END_CLOSED:I = 0x1

.field public static final ERROR_STORAGE_FULL:I = 0x2

.field public static final ERROR_UNKNOWN:I


# instance fields
.field private final mErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    iput p1, p0, Landroid/provider/CallLog$CallComposerLoggingException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    iget v0, p0, Landroid/provider/CallLog$CallComposerLoggingException;->mErrorCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Landroid/provider/CallLog$CallComposerLoggingException;->mErrorCode:I

    packed-switch v0, :pswitch_data_42

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/provider/CallLog$CallComposerLoggingException;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :pswitch_21  #0x3
    const-string v0, "INPUT_CLOSED"

    goto :goto_2d

    :pswitch_24  #0x2
    const-string v0, "STORAGE_FULL"

    goto :goto_2d

    :pswitch_27  #0x1
    const-string v0, "REMOTE_END_CLOSED"

    goto :goto_2d

    :pswitch_2a  #0x0
    const-string v0, "UNKNOWN"

    nop

    :goto_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallComposerLoggingException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_2a  #00000000
        :pswitch_27  #00000001
        :pswitch_24  #00000002
        :pswitch_21  #00000003
    .end packed-switch
.end method
