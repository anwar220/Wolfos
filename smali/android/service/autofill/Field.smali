# classes3.dex

.class public final Landroid/service/autofill/Field;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/Field$Builder;
    }
.end annotation


# instance fields
.field private mFilter:Landroid/service/autofill/Dataset$DatasetFieldFilter;

.field private mPresentations:Landroid/service/autofill/Presentations;

.field private mValue:Landroid/view/autofill/AutofillValue;


# direct methods
.method constructor <init>(Landroid/view/autofill/AutofillValue;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/service/autofill/Presentations;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/Field;->mValue:Landroid/view/autofill/AutofillValue;

    iput-object p2, p0, Landroid/service/autofill/Field;->mFilter:Landroid/service/autofill/Dataset$DatasetFieldFilter;

    iput-object p3, p0, Landroid/service/autofill/Field;->mPresentations:Landroid/service/autofill/Presentations;

    return-void
.end method


# virtual methods
.method public getDatasetFieldFilter()Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/Field;->mFilter:Landroid/service/autofill/Dataset$DatasetFieldFilter;

    return-object v0
.end method

.method public getFilter()Ljava/util/regex/Pattern;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/Field;->mFilter:Landroid/service/autofill/Dataset$DatasetFieldFilter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, v0, Landroid/service/autofill/Dataset$DatasetFieldFilter;->pattern:Ljava/util/regex/Pattern;

    :goto_8
    return-object v0
.end method

.method public getPresentations()Landroid/service/autofill/Presentations;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/Field;->mPresentations:Landroid/service/autofill/Presentations;

    return-object v0
.end method

.method public getValue()Landroid/view/autofill/AutofillValue;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/Field;->mValue:Landroid/view/autofill/AutofillValue;

    return-object v0
.end method
