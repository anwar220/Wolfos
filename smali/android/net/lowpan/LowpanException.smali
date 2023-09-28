# classes2.dex

.class public Landroid/net/lowpan/LowpanException;
.super Landroid/util/AndroidException;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/util/AndroidException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    iget v0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v0, :pswitch_data_6e

    :pswitch_5  #0x5, 0x6, 0x8, 0x9
    new-instance v0, Landroid/net/lowpan/LowpanRuntimeException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/LowpanRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :pswitch_b  #0xf
    new-instance v0, Landroid/net/lowpan/NetworkAlreadyExistsException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/NetworkAlreadyExistsException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :pswitch_11  #0xe
    new-instance v0, Landroid/net/lowpan/JoinFailedAtAuthException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/JoinFailedAtAuthException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :pswitch_17  #0xd
    new-instance v0, Landroid/net/lowpan/JoinFailedAtScanException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/JoinFailedAtScanException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :pswitch_1d  #0xc
    new-instance v0, Landroid/net/lowpan/JoinFailedException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/JoinFailedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :pswitch_23  #0xb
    new-instance v0, Landroid/net/lowpan/LowpanException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    :cond_30
    const-string v1, "Feature not supported"

    :goto_32
    invoke-direct {v0, v1, p0}, Landroid/net/lowpan/LowpanException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_36  #0xa
    new-instance v0, Landroid/net/lowpan/OperationCanceledException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/OperationCanceledException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :pswitch_3c  #0x7
    new-instance v0, Landroid/net/lowpan/LowpanRuntimeException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_49

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_4b

    :cond_49
    const-string v1, "NCP problem"

    :goto_4b
    invoke-direct {v0, v1, p0}, Landroid/net/lowpan/LowpanRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_4f  #0x4
    new-instance v0, Landroid/net/lowpan/WrongStateException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/WrongStateException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :pswitch_55  #0x3
    new-instance v0, Landroid/net/lowpan/InterfaceDisabledException;

    invoke-direct {v0, p0}, Landroid/net/lowpan/InterfaceDisabledException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :pswitch_5b  #0x2
    new-instance v0, Landroid/net/lowpan/LowpanRuntimeException;

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_68

    invoke-virtual {p0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_6a

    :cond_68
    const-string v1, "Invalid argument"

    :goto_6a
    invoke-direct {v0, v1, p0}, Landroid/net/lowpan/LowpanRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_6e
    .packed-switch 0x2
        :pswitch_5b  #00000002
        :pswitch_55  #00000003
        :pswitch_4f  #00000004
        :pswitch_5  #00000005
        :pswitch_5  #00000006
        :pswitch_3c  #00000007
        :pswitch_5  #00000008
        :pswitch_5  #00000009
        :pswitch_36  #0000000a
        :pswitch_23  #0000000b
        :pswitch_1d  #0000000c
        :pswitch_17  #0000000d
        :pswitch_11  #0000000e
        :pswitch_b  #0000000f
    .end packed-switch
.end method
