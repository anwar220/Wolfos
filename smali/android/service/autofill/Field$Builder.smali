# classes3.dex

.class public final Landroid/service/autofill/Field$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDestroyed:Z

.field private mFilter:Landroid/service/autofill/Dataset$DatasetFieldFilter;

.field private mPresentations:Landroid/service/autofill/Presentations;

.field private mValue:Landroid/view/autofill/AutofillValue;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/autofill/Field$Builder;->mValue:Landroid/view/autofill/AutofillValue;

    iput-object v0, p0, Landroid/service/autofill/Field$Builder;->mFilter:Landroid/service/autofill/Dataset$DatasetFieldFilter;

    iput-object v0, p0, Landroid/service/autofill/Field$Builder;->mPresentations:Landroid/service/autofill/Presentations;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/autofill/Field$Builder;->mDestroyed:Z

    return-void
.end method

.method private checkNotUsed()V
    .registers 3

    iget-boolean v0, p0, Landroid/service/autofill/Field$Builder;->mDestroyed:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/service/autofill/Field;
    .registers 5

    invoke-direct {p0}, Landroid/service/autofill/Field$Builder;->checkNotUsed()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/Field$Builder;->mDestroyed:Z

    new-instance v0, Landroid/service/autofill/Field;

    iget-object v1, p0, Landroid/service/autofill/Field$Builder;->mValue:Landroid/view/autofill/AutofillValue;

    iget-object v2, p0, Landroid/service/autofill/Field$Builder;->mFilter:Landroid/service/autofill/Dataset$DatasetFieldFilter;

    iget-object v3, p0, Landroid/service/autofill/Field$Builder;->mPresentations:Landroid/service/autofill/Presentations;

    invoke-direct {v0, v1, v2, v3}, Landroid/service/autofill/Field;-><init>(Landroid/view/autofill/AutofillValue;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/service/autofill/Presentations;)V

    return-object v0
.end method

.method public setFilter(Ljava/util/regex/Pattern;)Landroid/service/autofill/Field$Builder;
    .registers 3

    invoke-direct {p0}, Landroid/service/autofill/Field$Builder;->checkNotUsed()V

    new-instance v0, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    invoke-direct {v0, p1}, Landroid/service/autofill/Dataset$DatasetFieldFilter;-><init>(Ljava/util/regex/Pattern;)V

    iput-object v0, p0, Landroid/service/autofill/Field$Builder;->mFilter:Landroid/service/autofill/Dataset$DatasetFieldFilter;

    return-object p0
.end method

.method public setPresentations(Landroid/service/autofill/Presentations;)Landroid/service/autofill/Field$Builder;
    .registers 2

    invoke-direct {p0}, Landroid/service/autofill/Field$Builder;->checkNotUsed()V

    iput-object p1, p0, Landroid/service/autofill/Field$Builder;->mPresentations:Landroid/service/autofill/Presentations;

    return-object p0
.end method

.method public setValue(Landroid/view/autofill/AutofillValue;)Landroid/service/autofill/Field$Builder;
    .registers 2

    invoke-direct {p0}, Landroid/service/autofill/Field$Builder;->checkNotUsed()V

    iput-object p1, p0, Landroid/service/autofill/Field$Builder;->mValue:Landroid/view/autofill/AutofillValue;

    return-object p0
.end method
