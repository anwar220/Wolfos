# classes.dex

.class public final synthetic Landroid/accounts/CantAddAccountActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/accounts/CantAddAccountActivity;


# direct methods
.method public synthetic constructor <init>(Landroid/accounts/CantAddAccountActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accounts/CantAddAccountActivity$$ExternalSyntheticLambda0;->f$0:Landroid/accounts/CantAddAccountActivity;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/accounts/CantAddAccountActivity$$ExternalSyntheticLambda0;->f$0:Landroid/accounts/CantAddAccountActivity;

    invoke-virtual {v0}, Landroid/accounts/CantAddAccountActivity;->lambda$onCreate$0$android-accounts-CantAddAccountActivity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
