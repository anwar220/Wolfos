# classes3.dex

.class public final synthetic Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telecom/CallDiagnosticService;

.field public final synthetic f$1:Landroid/telecom/Call$Details;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/CallDiagnosticService;Landroid/telecom/Call$Details;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda2;->f$0:Landroid/telecom/CallDiagnosticService;

    iput-object p2, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda2;->f$1:Landroid/telecom/Call$Details;

    iput-object p3, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda2;->f$0:Landroid/telecom/CallDiagnosticService;

    iget-object v1, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda2;->f$1:Landroid/telecom/Call$Details;

    iget-object v2, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telecom/CallDiagnosticService;->lambda$handleCallAdded$0$android-telecom-CallDiagnosticService(Landroid/telecom/Call$Details;Ljava/lang/String;)V

    return-void
.end method
