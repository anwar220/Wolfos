# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivateKey;


# static fields
.field public static final LABEL:Ljava/lang/String; = "label"


# instance fields
.field private final annotations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final key:Ljava/security/PrivateKey;


# direct methods
.method constructor <init>(Ljava/security/PrivateKey;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    const-string/jumbo v0, "label"

    invoke-static {v0, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/security/PrivateKey;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addAnnotation(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;-><init>(Ljava/security/PrivateKey;Ljava/util/Map;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_10
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-interface {v0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-interface {v0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/security/PrivateKey;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public removeAnnotation(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;-><init>(Ljava/security/PrivateKey;Ljava/util/Map;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    const-string/jumbo v1, "label"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->annotations:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/AnnotatedPrivateKey;->key:Ljava/security/PrivateKey;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
