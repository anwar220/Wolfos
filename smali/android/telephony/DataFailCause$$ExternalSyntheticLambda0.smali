# classes3.dex

.class public final synthetic Landroid/telephony/DataFailCause$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/DataFailCause$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .registers 3

    iget v0, p0, Landroid/telephony/DataFailCause$$ExternalSyntheticLambda0;->f$0:I

    invoke-static {v0, p1}, Landroid/telephony/DataFailCause;->lambda$isRadioRestartFailure$0(II)Z

    move-result p1

    return p1
.end method
