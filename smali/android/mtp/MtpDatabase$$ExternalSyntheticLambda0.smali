# classes2.dex

.class public final synthetic Landroid/mtp/MtpDatabase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/mtp/MtpDatabase;


# direct methods
.method public synthetic constructor <init>(Landroid/mtp/MtpDatabase;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/mtp/MtpDatabase$$ExternalSyntheticLambda0;->f$0:Landroid/mtp/MtpDatabase;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/mtp/MtpDatabase$$ExternalSyntheticLambda0;->f$0:Landroid/mtp/MtpDatabase;

    invoke-virtual {v0}, Landroid/mtp/MtpDatabase;->lambda$addStorage$0$android-mtp-MtpDatabase()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
