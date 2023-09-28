# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;
    }
.end annotation


# instance fields
.field private final algorithmNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final parameterSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->-$$Nest$fgetalgorithmNames(Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;->algorithmNames:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;->-$$Nest$fgetparameterSpecs(Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;->parameterSpecs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAlgorithmNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;->algorithmNames:Ljava/util/List;

    return-object v0
.end method

.method public getParameterSpecs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/CompositeAlgorithmSpec;->parameterSpecs:Ljava/util/List;

    return-object v0
.end method
