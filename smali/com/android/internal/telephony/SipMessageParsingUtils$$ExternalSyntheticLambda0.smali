# classes4.dex

.class public final synthetic Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/SipMessageParsingUtils;->lambda$verifySipRequest$1([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
