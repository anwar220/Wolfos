# classes3.dex

.class public final synthetic Landroid/telephony/euicc/EuiccCardManager$10$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/euicc/EuiccCardManager$ResultCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/euicc/EuiccCardManager$ResultCallback;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/euicc/EuiccCardManager$10$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/euicc/EuiccCardManager$ResultCallback;

    iput p2, p0, Landroid/telephony/euicc/EuiccCardManager$10$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Landroid/telephony/euicc/EuiccCardManager$10$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/euicc/EuiccCardManager$10$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/euicc/EuiccCardManager$ResultCallback;

    iget v1, p0, Landroid/telephony/euicc/EuiccCardManager$10$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Landroid/telephony/euicc/EuiccCardManager$10$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/telephony/euicc/EuiccCardManager$10;->lambda$onComplete$0(Landroid/telephony/euicc/EuiccCardManager$ResultCallback;ILjava/lang/String;)V

    return-void
.end method