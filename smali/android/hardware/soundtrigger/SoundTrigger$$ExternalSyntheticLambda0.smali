# classes2.dex

.class public final synthetic Landroid/hardware/soundtrigger/SoundTrigger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 1

    invoke-static {}, Landroid/hardware/soundtrigger/SoundTrigger;->lambda$getService$0()V

    return-void
.end method
