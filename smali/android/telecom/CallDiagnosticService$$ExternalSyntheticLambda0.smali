# classes3.dex

.class public final synthetic Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telecom/CallDiagnostics;

.field public final synthetic f$1:Landroid/telecom/Call$Details;


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/CallDiagnostics;Landroid/telecom/Call$Details;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda0;->f$0:Landroid/telecom/CallDiagnostics;

    iput-object p2, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda0;->f$1:Landroid/telecom/Call$Details;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda0;->f$0:Landroid/telecom/CallDiagnostics;

    iget-object v1, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda0;->f$1:Landroid/telecom/Call$Details;

    invoke-static {v0, v1}, Landroid/telecom/CallDiagnosticService;->lambda$handleCallUpdated$1(Landroid/telecom/CallDiagnostics;Landroid/telecom/Call$Details;)V

    return-void
.end method
