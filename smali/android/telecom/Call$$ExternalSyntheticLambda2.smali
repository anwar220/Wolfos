# classes3.dex

.class public final synthetic Landroid/telecom/Call$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telecom/Call$Callback;

.field public final synthetic f$1:Landroid/telecom/Call;


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/Call$$ExternalSyntheticLambda2;->f$0:Landroid/telecom/Call$Callback;

    iput-object p2, p0, Landroid/telecom/Call$$ExternalSyntheticLambda2;->f$1:Landroid/telecom/Call;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telecom/Call$$ExternalSyntheticLambda2;->f$0:Landroid/telecom/Call$Callback;

    iget-object v1, p0, Landroid/telecom/Call$$ExternalSyntheticLambda2;->f$1:Landroid/telecom/Call;

    invoke-static {v0, v1}, Landroid/telecom/Call;->lambda$internalOnHandoverComplete$3(Landroid/telecom/Call$Callback;Landroid/telecom/Call;)V

    return-void
.end method
