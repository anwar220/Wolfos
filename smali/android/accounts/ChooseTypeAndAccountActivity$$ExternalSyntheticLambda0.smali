# classes.dex

.class public final synthetic Landroid/accounts/ChooseTypeAndAccountActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/accounts/ChooseTypeAndAccountActivity;


# direct methods
.method public synthetic constructor <init>(Landroid/accounts/ChooseTypeAndAccountActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accounts/ChooseTypeAndAccountActivity$$ExternalSyntheticLambda0;->f$0:Landroid/accounts/ChooseTypeAndAccountActivity;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity$$ExternalSyntheticLambda0;->f$0:Landroid/accounts/ChooseTypeAndAccountActivity;

    invoke-virtual {v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->lambda$onCreate$0$android-accounts-ChooseTypeAndAccountActivity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
