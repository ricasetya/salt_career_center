// ignore_for_file: public_member_api_docs, sort_constructors_first, depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:telkom_career/domain/model/data/company/jobs_company_data.dart';
import 'package:telkom_career/domain/repository/company/company_data_repository.dart';

part 'jobs_company_data_state.dart';

class JobsCompanyDataCubit extends Cubit<JobsCompanyDataState> {
  final CompanyDataRepository repository;
  JobsCompanyDataCubit(
    this.repository,
  ) : super(JobsCompanyDataInitial());
}
