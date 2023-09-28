# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jce/spec/ECKeySpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private spec:Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;


# direct methods
.method protected constructor <init>(Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECKeySpec;->spec:Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    return-void
.end method


# virtual methods
.method public getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECKeySpec;->spec:Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    return-object v0
.end method
