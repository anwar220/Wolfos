# classes3.dex

.class public final synthetic Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/dreams/DreamService$DreamServiceWrapper;


# direct methods
.method public synthetic constructor <init>(Landroid/service/dreams/DreamService$DreamServiceWrapper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    invoke-virtual {v0}, Landroid/service/dreams/DreamService$DreamServiceWrapper;->lambda$wakeUp$2$android-service-dreams-DreamService$DreamServiceWrapper()V

    return-void
.end method
